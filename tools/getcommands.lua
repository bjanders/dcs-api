INSTALL_PATH=
cjson = require "cjson"
dofile(INSTALL_PATH.."/Eagle Dynamics/DCS World/Mods/aircraft/"..arg[1].."/Cockpit/Scripts/command_defs.lua")
commands = {}
for n, v in pairs(_G) do
	start = string.find(n, "_commands")
	if start then
		device = string.sub(n, 1, start-1)
		for com, i in pairs(v) do
			commands[device.."."..com] = i
		end
	end
end
print(cjson.encode(commands))
