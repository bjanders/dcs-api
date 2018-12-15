aircraft_name = "XXXXXX"
local lfs = require('lfs')
local JSON = loadfile("Scripts/JSON.lua")()
local json_str = JSON:encode_pretty(elements)
local f, err = io.open(lfs.writedir().."/Logs/elements-"..aircraft_name..".json", 'w')
if f == nil then
	error(err)
end
f:write(json_str)
f:close()
