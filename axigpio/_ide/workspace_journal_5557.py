# 2025-11-20T23:06:30.138214
import vitis

client = vitis.create_client()
client.set_workspace(path="axigpio")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="platform")
domain = platform.add_domain(cpu = "ps7_cortexa9_0",os = "standalone",name = "domain_ps7_cortexa9_0",display_name = "domain_ps7_cortexa9_0",support_app = "hello_world",generate_dtb = False)

comp = client.create_app_component(name="app_component",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

client.delete_component(name="app_component")

domain = platform.add_domain(cpu = "ps7_cortexa9_0",os = "standalone",name = "domain_standalone_ps7_cortexa9_0",display_name = "domain_standalone_ps7_cortexa9_0",support_app = "hello_world",generate_dtb = False)

client.delete_component(name="platform")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

vitis.dispose()

