# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/issam/FPGA/repo/sdk/microzed/ps7_cortexa9_0/domain_ps7_cortexa9_0/bsp/include/sleep.h"
  "/home/issam/FPGA/repo/sdk/microzed/ps7_cortexa9_0/domain_ps7_cortexa9_0/bsp/include/xiltimer.h"
  "/home/issam/FPGA/repo/sdk/microzed/ps7_cortexa9_0/domain_ps7_cortexa9_0/bsp/include/xtimer_config.h"
  "/home/issam/FPGA/repo/sdk/microzed/ps7_cortexa9_0/domain_ps7_cortexa9_0/bsp/lib/libxiltimer.a"
  )
endif()
