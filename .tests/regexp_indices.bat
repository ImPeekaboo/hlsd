@echo off

set NODE_SKIP_PLATFORM_CHECK=1

set node_10="C:\PortableApps\node.js\10.14.2\node.exe"
set node_12="C:\PortableApps\node.js\12.13.0\node.exe"
set node_16="C:\PortableApps\node.js\16.14.0\node.exe"

set js_input="%~dpn0.js"
set log_output="%~dpn0.log"

if exist %log_output% del %log_output%

%node_10% %js_input% >>%log_output% 2>&1
%node_12% %js_input% >>%log_output% 2>&1
%node_16% %js_input% >>%log_output% 2>&1
