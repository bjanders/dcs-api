INSTALL_PATH=
cjson = require "cjson"
dofile(INSTALL_PATH.."/Eagle Dynamics/DCS World/Mods/aircraft/"..arg[1].."/Cockpit/Scripts/devices.lua")
print(cjson.encode(devices))
