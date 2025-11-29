import React, { useState, useEffect } from 'react';
import { Play, Pause, RotateCcw, SkipForward, ChevronRight } from 'lucide-react';

const FIFOStateMachine = () => {
  const FIFO_SIZE = 16;
  
  // FIFO State Variables
  const [memory, setMemory] = useState(Array(FIFO_SIZE).fill(null));
  const [wrAddr, setWrAddr] = useState(0);
  const [rdAddr, setRdAddr] = useState(0);
  const [wrAddrGrey, setWrAddrGrey] = useState(0);
  const [rdAddrGrey, setRdAddrGrey] = useState(0);
  const [wrAddrSync, setWrAddrSync] = useState(0);
  const [rdAddrSync, setRdAddrSync] = useState(0);
  const [wrGreySync1, setWrGreySync1] = useState(0);
  const [wrGreySync2, setWrGreySync2] = useState(0);
  const [rdGreySync1, setRdGreySync1] = useState(0);
  const [rdGreySync2, setRdGreySync2] = useState(0);
  const [full, setFull] = useState(false);
  const [empty, setEmpty] = useState(true);
  
  // Operation tracking
  const [operation, setOperation] = useState('IDLE');
  const [dataCounter, setDataCounter] = useState(0x00);
  const [step, setStep] = useState(0);
  const [isPlaying, setIsPlaying] = useState(false);
  const [operationLog, setOperationLog] = useState([]);
  const [stateChanges, setStateChanges] = useState([]);
  
  // Previous values for highlighting changes
  const [prevWrAddr, setPrevWrAddr] = useState(0);
  const [prevRdAddr, setPrevRdAddr] = useState(0);
  const [prevWrAddrGrey, setPrevWrAddrGrey] = useState(0);
  const [prevRdAddrGrey, setPrevRdAddrGrey] = useState(0);
  
  const MAX_LOG = 15;

  // Conversion functions
  const binaryToGrey = (binary) => binary ^ (binary >> 1);
  const greyToBinary = (grey) => {
    let binary = grey;
    for (let i = 1; i < 4; i++) binary ^= (grey >> i);
    return binary & 0xF;
  };
  const toBinary = (num) => num.toString(2).padStart(4, '0');
  const toHex = (num) => num === null ? '--' : '0x' + num.toString(16).toUpperCase().padStart(2, '0');

  // Calculate FIFO status
  const calculateStatus = (wr, rdSync) => {
    const usedSpace = (wr - rdSync + FIFO_SIZE) % FIFO_SIZE;
    const isFull = usedSpace > 14;
    const isEmpty = wr === rdSync;
    return { usedSpace, isFull, isEmpty };
  };

  // Log state changes
  const logChange = (description, oldValue, newValue, signal) => {
    setStateChanges(prev => [...prev.slice(-5), {
      signal,
      oldValue,
      newValue,
      description,
      step
    }]);
  };

  // Reset function
  const resetFIFO = () => {
    setMemory(Array(FIFO_SIZE).fill(null));
    setWrAddr(0); setRdAddr(0);
    setWrAddrGrey(0); setRdAddrGrey(0);
    setWrAddrSync(0); setRdAddrSync(0);
    setWrGreySync1(0); setWrGreySync2(0);
    setRdGreySync1(0); setRdGreySync2(0);
    setFull(false); setEmpty(true);
    setDataCounter(0x00);
    setStep(0);
    setOperation('IDLE');
    setOperationLog([]);
    setStateChanges([]);
    setPrevWrAddr(0); setPrevRdAddr(0);
    setPrevWrAddrGrey(0); setPrevRdAddrGrey(0);
    setIsPlaying(false);
  };

  // Write operation
  const performWrite = () => {
    // First, synchronize read pointer (sample current rd_addr_grey from read domain)
    const newRdGreySync1 = rdAddrGrey; // Sample current Grey code from read domain
    const newRdGreySync2 = rdGreySync1; // Advance pipeline (use OLD sync1)
    const newRdAddrSync = greyToBinary(newRdGreySync2); // Convert OLD sync2 to binary
    
    // Write domain checks: wr_addr vs NEW rd_addr_sync
    const usedSpace = (wrAddr - newRdAddrSync + FIFO_SIZE) % FIFO_SIZE;
    const isFull = usedSpace > 14;
    
    if (isFull) {
      // Still update sync stages even when blocked
      setRdGreySync1(newRdGreySync1);
      setRdGreySync2(newRdGreySync2);
      setRdAddrSync(newRdAddrSync);
      
      setOperation('WRITE_BLOCKED');
      setOperationLog(prev => [...prev.slice(-MAX_LOG + 1), 
        `❌ WRITE BLOCKED - FIFO is FULL (wr_addr=${wrAddr}, rd_addr_sync=${newRdAddrSync}, used=${usedSpace}/16)`]);
      return;
    }

    setOperation('WRITING');
    
    // 1. Write data to memory
    const newMemory = [...memory];
    newMemory[wrAddr] = dataCounter;
    setMemory(newMemory);
    
    setOperationLog(prev => [...prev.slice(-MAX_LOG + 1), 
      `✏️ WRITE: Data ${toHex(dataCounter)} → Memory[${wrAddr}]`]);
    
    // 2. Update synchronizers
    setRdGreySync1(newRdGreySync1);
    setRdGreySync2(newRdGreySync2);
    setRdAddrSync(newRdAddrSync);
    
    setOperationLog(prev => [...prev.slice(-MAX_LOG + 1), 
      `🔄 SYNC: rd_addr_grey=${toBinary(rdAddrGrey)} → sync1=${toBinary(newRdGreySync1)} → sync2=${toBinary(newRdGreySync2)} → rd_addr_sync=${newRdAddrSync}(${toBinary(newRdAddrSync)})`]);
    
    // 3. Increment write address
    setPrevWrAddr(wrAddr);
    const newWrAddr = (wrAddr + 1) % FIFO_SIZE;
    setWrAddr(newWrAddr);
    logChange(`Write pointer incremented`, wrAddr, newWrAddr, 'wr_addr');
    
    // 4. Convert to Gray code
    setPrevWrAddrGrey(wrAddrGrey);
    const newWrAddrGrey = binaryToGrey(newWrAddr);
    setWrAddrGrey(newWrAddrGrey);
    logChange(`Binary to Gray conversion`, toBinary(wrAddr), toBinary(newWrAddrGrey), 'wr_addr_grey');
    
    // 5. Update flags with NEW values
    const newUsedSpace = (newWrAddr - newRdAddrSync + FIFO_SIZE) % FIFO_SIZE;
    const newFull = newUsedSpace > 14;
    setFull(newFull);
    
    const newEmpty = newWrAddr === newRdAddrSync;
    setEmpty(newEmpty);
    
    setOperationLog(prev => [...prev.slice(-MAX_LOG + 1), 
      `📊 STATUS: wr_addr=${newWrAddr}, rd_addr_sync=${newRdAddrSync}, Used=${newUsedSpace}/16, Full=${newFull}`]);
    
    // 6. Increment data counter
    setDataCounter((dataCounter + 1) & 0xFF);
    
    setOperation('WRITE_COMPLETE');
  };

  // Read operation
  const performRead = () => {
    // First, synchronize write pointer (sample current wr_addr_grey from write domain)
    const newWrGreySync1 = wrAddrGrey; // Sample current Grey code from write domain
    const newWrGreySync2 = wrGreySync1; // Advance pipeline (use OLD sync1)
    const newWrAddrSync = greyToBinary(newWrGreySync2); // Convert OLD sync2 to binary
    
    // Read domain checks: rd_addr vs NEW wr_addr_sync
    const isEmpty = rdAddr === newWrAddrSync;
    
    if (isEmpty) {
      // Still update sync stages even when blocked
      setWrGreySync1(newWrGreySync1);
      setWrGreySync2(newWrGreySync2);
      setWrAddrSync(newWrAddrSync);
      
      setOperation('READ_BLOCKED');
      setOperationLog(prev => [...prev.slice(-MAX_LOG + 1), 
        `❌ READ BLOCKED - FIFO is EMPTY (rd_addr=${rdAddr} == wr_addr_sync=${newWrAddrSync})`]);
      return;
    }

    setOperation('READING');
    
    // 1. Read data from memory
    const readData = memory[rdAddr];
    
    setOperationLog(prev => [...prev.slice(-MAX_LOG + 1), 
      `📖 READ: Memory[${rdAddr}] → Data ${toHex(readData)}`]);
    
    // 2. Update synchronizers
    setWrGreySync1(newWrGreySync1);
    setWrGreySync2(newWrGreySync2);
    setWrAddrSync(newWrAddrSync);
    
    setOperationLog(prev => [...prev.slice(-MAX_LOG + 1), 
      `🔄 SYNC: wr_addr_grey=${toBinary(wrAddrGrey)} → sync1=${toBinary(newWrGreySync1)} → sync2=${toBinary(newWrGreySync2)} → wr_addr_sync=${newWrAddrSync}(${toBinary(newWrAddrSync)})`]);
    
    // 3. Increment read address
    setPrevRdAddr(rdAddr);
    const newRdAddr = (rdAddr + 1) % FIFO_SIZE;
    setRdAddr(newRdAddr);
    logChange(`Read pointer incremented`, rdAddr, newRdAddr, 'rd_addr');
    
    // 4. Convert to Gray code
    setPrevRdAddrGrey(rdAddrGrey);
    const newRdAddrGrey = binaryToGrey(newRdAddr);
    setRdAddrGrey(newRdAddrGrey);
    logChange(`Binary to Gray conversion`, toBinary(rdAddr), toBinary(newRdAddrGrey), 'rd_addr_grey');
    
    // 5. Update empty flag (read domain perspective with NEW values)
    const newEmpty = newRdAddr === newWrAddrSync;
    setEmpty(newEmpty);
    
    // Calculate used space for display (from read domain perspective)
    const usedSpace = (newWrAddrSync - newRdAddr + FIFO_SIZE) % FIFO_SIZE;
    
    // Update full flag
    const newFull = usedSpace > 14;
    setFull(newFull);
    
    setOperationLog(prev => [...prev.slice(-MAX_LOG + 1), 
      `📊 STATUS: rd_addr=${newRdAddr}, wr_addr_sync=${newWrAddrSync}, Used=${usedSpace}/16, Empty=${newEmpty}`]);
    
    setOperation('READ_COMPLETE');
  };

  // Auto operation
  const autoStep = () => {
    // Calculate from each domain's perspective
    const usedSpace = (wrAddr - rdAddrSync + FIFO_SIZE) % FIFO_SIZE;
    const isFull = usedSpace > 14;
    const isEmpty = rdAddr === wrAddrSync;
    
    // Alternate between write and read, biased toward filling FIFO first
    if (usedSpace < 8 && !isFull) {
      performWrite();
    } else if (!isEmpty && Math.random() > 0.3) {
      performRead();
    } else if (!isFull) {
      performWrite();
    }
    
    setStep(step + 1);
  };

  // Auto-play effect
  useEffect(() => {
    if (isPlaying) {
      const interval = setInterval(autoStep, 800);
      return () => clearInterval(interval);
    }
  }, [isPlaying, step, wrAddr, rdAddr, memory, dataCounter, wrAddrSync, rdAddrSync]);

  const status = calculateStatus(wrAddr, rdAddrSync);

  // Check if value changed
  const hasChanged = (current, prev) => current !== prev;

  return (
    <div className="w-full max-w-7xl mx-auto p-6 bg-gradient-to-br from-slate-900 to-slate-800 text-white rounded-lg">
      <h1 className="text-3xl font-bold mb-6 text-center text-cyan-400">
        FIFO Internal State Machine
      </h1>

      {/* Control Panel */}
      <div className="bg-slate-800 p-4 rounded-lg mb-6 border border-cyan-500/30">
        <div className="flex items-center justify-between mb-4">
          <div className="flex gap-2">
            <button onClick={() => setIsPlaying(!isPlaying)} className="flex items-center gap-2 px-4 py-2 bg-cyan-600 hover:bg-cyan-700 rounded transition">
              {isPlaying ? <Pause size={20} /> : <Play size={20} />}
              {isPlaying ? 'Pause' : 'Auto'}
            </button>
            <button onClick={() => { performWrite(); setStep(step + 1); }} disabled={isPlaying || full} className="flex items-center gap-2 px-4 py-2 bg-green-600 hover:bg-green-700 rounded transition disabled:opacity-50">
              ✏️ Write
            </button>
            <button onClick={() => { performRead(); setStep(step + 1); }} disabled={isPlaying || empty} className="flex items-center gap-2 px-4 py-2 bg-blue-600 hover:bg-blue-700 rounded transition disabled:opacity-50">
              📖 Read
            </button>
            <button onClick={resetFIFO} className="flex items-center gap-2 px-4 py-2 bg-red-600 hover:bg-red-700 rounded transition">
              <RotateCcw size={20} /> Reset
            </button>
          </div>
          <div className="text-sm">
            <span className="text-gray-400">Step: </span>
            <span className="font-mono text-cyan-400">{step}</span>
          </div>
        </div>

        {/* Current Operation */}
        <div className="bg-slate-700 p-3 rounded">
          <div className="text-sm text-gray-400 mb-1">Current Operation</div>
          <div className={`text-lg font-bold ${
            operation.includes('BLOCKED') ? 'text-red-400' : 
            operation.includes('COMPLETE') ? 'text-green-400' : 
            operation.includes('WRITING') || operation.includes('READING') ? 'text-cyan-400' :
            'text-gray-400'
          }`}>
            {operation || 'IDLE'}
          </div>
        </div>
      </div>

      {/* Main Content Grid */}
      <div className="grid grid-cols-3 gap-6 mb-6">
        {/* Left: Write Clock Domain */}
        <div className="bg-slate-800 p-4 rounded-lg border border-cyan-500/30">
          <h3 className="text-lg font-bold mb-3 text-cyan-400">Write Clock Domain</h3>
          <div className="space-y-3">
            <div className="bg-slate-700 p-3 rounded">
              <div className="text-xs text-gray-400 mb-1">1. Write Address (Binary)</div>
              <div className={`font-mono text-lg transition-all ${hasChanged(wrAddr, prevWrAddr) ? 'text-cyan-300 font-bold animate-pulse' : 'text-white'}`}>
                {wrAddr} = {toBinary(wrAddr)}
              </div>
            </div>

            <div className="flex items-center justify-center text-cyan-400">
              <ChevronRight size={24} />
            </div>

            <div className="bg-slate-700 p-3 rounded">
              <div className="text-xs text-gray-400 mb-1">2. Convert to Gray Code</div>
              <div className={`font-mono text-lg transition-all ${hasChanged(wrAddrGrey, prevWrAddrGrey) ? 'text-cyan-300 font-bold animate-pulse' : 'text-white'}`}>
                {toBinary(wrAddrGrey)}
              </div>
              <div className="text-xs text-gray-500 mt-1">wr_addr_grey</div>
            </div>

            <div className="border-t border-slate-600 pt-3">
              <div className="text-xs text-purple-400 mb-2">← From Read Domain</div>
              
              <div className="bg-slate-700 p-2 rounded mb-2">
                <div className="text-xs text-gray-400">Stage 1 Sync</div>
                <div className="font-mono text-sm text-purple-300">{toBinary(rdGreySync1)}</div>
              </div>

              <div className="bg-slate-700 p-2 rounded mb-2">
                <div className="text-xs text-gray-400">Stage 2 Sync</div>
                <div className="font-mono text-sm text-purple-300">{toBinary(rdGreySync2)}</div>
              </div>

              <div className="bg-slate-700 p-2 rounded">
                <div className="text-xs text-gray-400">Convert to Binary</div>
                <div className="font-mono text-sm text-purple-400">{rdAddrSync} = {toBinary(rdAddrSync)}</div>
                <div className="text-xs text-gray-500">rd_addr_sync</div>
              </div>
            </div>

            <div className="bg-red-900/30 border border-red-500/50 p-3 rounded">
              <div className="text-xs text-gray-400 mb-1">Full Check</div>
              <div className="font-mono text-sm">
                (wr_addr - rd_addr_sync) = {(wrAddr - rdAddrSync + FIFO_SIZE) % FIFO_SIZE}
              </div>
              <div className={`font-bold mt-1 ${full ? 'text-red-400' : 'text-green-400'}`}>
                {full ? '> 14 → FULL!' : '≤ 14 → OK'}
              </div>
            </div>
          </div>
        </div>

        {/* Middle: FIFO Memory */}
        <div className="bg-slate-800 p-4 rounded-lg border border-cyan-500/30">
          <h3 className="text-lg font-bold mb-3 text-cyan-400">FIFO Memory State</h3>
          
          <div className="grid grid-cols-4 gap-1 mb-4">
            {memory.map((data, index) => {
              const isWritePos = index === wrAddr;
              const isReadPos = index === rdAddr;
              const hasData = data !== null;
              
              return (
                <div key={index} className={`relative p-2 rounded border-2 transition-all text-center ${
                  isWritePos ? 'border-cyan-400 bg-cyan-900/50 shadow-lg shadow-cyan-500/50 scale-110' : 
                  isReadPos ? 'border-purple-400 bg-purple-900/50 shadow-lg shadow-purple-500/50 scale-110' : 
                  hasData ? 'border-green-500/30 bg-green-900/20' : 'border-slate-600'
                }`}>
                  <div className="text-xs text-gray-400">[{index}]</div>
                  <div className={`font-mono text-xs ${hasData ? 'text-white' : 'text-gray-600'}`}>
                    {toHex(data)}
                  </div>
                </div>
              );
            })}
          </div>

          <div className="space-y-2 text-sm">
            <div className="flex justify-between p-2 bg-slate-700 rounded">
              <span className="text-gray-400">Used Space:</span>
              <span className="font-mono text-white">{status.usedSpace} / 16</span>
            </div>
            <div className="flex justify-between p-2 bg-slate-700 rounded">
              <span className="text-gray-400">Status:</span>
              <span className={`font-bold ${empty ? 'text-yellow-400' : full ? 'text-red-400' : 'text-green-400'}`}>
                {empty ? 'EMPTY' : full ? 'FULL' : 'ACTIVE'}
              </span>
            </div>
            <div className="flex justify-between p-2 bg-slate-700 rounded">
              <span className="text-gray-400">Next Write:</span>
              <span className="font-mono text-cyan-400">{toHex(dataCounter)}</span>
            </div>
          </div>
        </div>

        {/* Right: Read Clock Domain */}
        <div className="bg-slate-800 p-4 rounded-lg border border-purple-500/30">
          <h3 className="text-lg font-bold mb-3 text-purple-400">Read Clock Domain</h3>
          <div className="space-y-3">
            <div className="bg-slate-700 p-3 rounded">
              <div className="text-xs text-gray-400 mb-1">1. Read Address (Binary)</div>
              <div className={`font-mono text-lg transition-all ${hasChanged(rdAddr, prevRdAddr) ? 'text-purple-300 font-bold animate-pulse' : 'text-white'}`}>
                {rdAddr} = {toBinary(rdAddr)}
              </div>
            </div>

            <div className="flex items-center justify-center text-purple-400">
              <ChevronRight size={24} />
            </div>

            <div className="bg-slate-700 p-3 rounded">
              <div className="text-xs text-gray-400 mb-1">2. Convert to Gray Code</div>
              <div className={`font-mono text-lg transition-all ${hasChanged(rdAddrGrey, prevRdAddrGrey) ? 'text-purple-300 font-bold animate-pulse' : 'text-white'}`}>
                {toBinary(rdAddrGrey)}
              </div>
              <div className="text-xs text-gray-500 mt-1">rd_addr_grey</div>
            </div>

            <div className="border-t border-slate-600 pt-3">
              <div className="text-xs text-cyan-400 mb-2">← From Write Domain</div>
              
              <div className="bg-slate-700 p-2 rounded mb-2">
                <div className="text-xs text-gray-400">Stage 1 Sync</div>
                <div className="font-mono text-sm text-cyan-300">{toBinary(wrGreySync1)}</div>
              </div>

              <div className="bg-slate-700 p-2 rounded mb-2">
                <div className="text-xs text-gray-400">Stage 2 Sync</div>
                <div className="font-mono text-sm text-cyan-300">{toBinary(wrGreySync2)}</div>
              </div>

              <div className="bg-slate-700 p-2 rounded">
                <div className="text-xs text-gray-400">Convert to Binary</div>
                <div className="font-mono text-sm text-cyan-400">{wrAddrSync} = {toBinary(wrAddrSync)}</div>
                <div className="text-xs text-gray-500">wr_addr_sync</div>
              </div>
            </div>

            <div className="bg-yellow-900/30 border border-yellow-500/50 p-3 rounded">
              <div className="text-xs text-gray-400 mb-1">Empty Check</div>
              <div className="font-mono text-sm">
                rd_addr == wr_addr_sync?
              </div>
              <div className="font-mono text-sm">
                {rdAddr} == {wrAddrSync}?
              </div>
              <div className={`font-bold mt-1 ${empty ? 'text-yellow-400' : 'text-green-400'}`}>
                {empty ? 'YES → EMPTY!' : 'NO → OK'}
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* State Changes Log */}
      <div className="grid grid-cols-2 gap-6 mb-6">
        <div className="bg-slate-800 p-4 rounded-lg border border-cyan-500/30">
          <h3 className="text-lg font-bold mb-3 text-cyan-400">Recent State Changes</h3>
          <div className="space-y-2 max-h-48 overflow-y-auto">
            {stateChanges.length === 0 ? (
              <div className="text-gray-500 italic text-sm">No changes yet...</div>
            ) : (
              stateChanges.map((change, i) => (
                <div key={i} className="bg-slate-700 p-2 rounded text-sm">
                  <div className="font-mono text-cyan-400">{change.signal}</div>
                  <div className="text-gray-300">
                    <span className="text-red-400">{change.oldValue}</span>
                    {' → '}
                    <span className="text-green-400">{change.newValue}</span>
                  </div>
                  <div className="text-xs text-gray-500">{change.description}</div>
                </div>
              ))
            )}
          </div>
        </div>

        <div className="bg-slate-800 p-4 rounded-lg border border-cyan-500/30">
          <h3 className="text-lg font-bold mb-3 text-cyan-400">Operation Log</h3>
          <div className="space-y-1 max-h-48 overflow-y-auto font-mono text-xs">
            {operationLog.length === 0 ? (
              <div className="text-gray-500 italic">Perform write or read operation...</div>
            ) : (
              operationLog.map((log, i) => (
                <div key={i} className="text-gray-300 leading-relaxed">{log}</div>
              ))
            )}
          </div>
        </div>
      </div>

      {/* Step-by-Step Guide */}
      <div className="bg-slate-800 p-4 rounded-lg border border-cyan-500/30">
        <h3 className="text-lg font-bold mb-3 text-cyan-400">FIFO State Machine Steps</h3>
        <div className="grid grid-cols-2 gap-6 text-sm">
          <div className="space-y-2">
            <div className="font-bold text-cyan-400">Write Operation Steps:</div>
            <ol className="list-decimal list-inside space-y-1 text-gray-300">
              <li>Check if FIFO is FULL (wr_addr - rd_addr_sync &gt; 14)</li>
              <li>If not full: Write data to memory[wr_addr]</li>
              <li>Increment wr_addr (wraps 0→15→0)</li>
              <li>Convert wr_addr to Gray code (wr_addr_grey)</li>
              <li>Synchronize rd_addr from read domain (2 stages)</li>
              <li>Update FULL and EMPTY flags</li>
            </ol>
          </div>
          <div className="space-y-2">
            <div className="font-bold text-purple-400">Read Operation Steps:</div>
            <ol className="list-decimal list-inside space-y-1 text-gray-300">
              <li>Check if FIFO is EMPTY (rd_addr == wr_addr_sync)</li>
              <li>If not empty: Read data from memory[rd_addr]</li>
              <li>Increment rd_addr (wraps 0→15→0)</li>
              <li>Convert rd_addr to Gray code (rd_addr_grey)</li>
              <li>Synchronize wr_addr from write domain (2 stages)</li>
              <li>Update FULL and EMPTY flags</li>
            </ol>
          </div>
        </div>

        <div className="mt-4 p-3 bg-blue-900/20 border border-blue-500/30 rounded">
          <div className="font-bold text-blue-400 mb-2">Key Points:</div>
          <ul className="text-sm text-gray-300 space-y-1">
            <li>• Each pointer is converted to Gray code before crossing clock domains</li>
            <li>• 2-stage synchronizers prevent metastability</li>
            <li>• Pointers wrap around at 16 (modulo operation)</li>
            <li>• FULL and EMPTY are calculated using synchronized pointers</li>
            <li>• Gray code ensures only 1 bit changes at a time</li>
          </ul>
        </div>
      </div>
    </div>
  );
};

export default FIFOStateMachine;