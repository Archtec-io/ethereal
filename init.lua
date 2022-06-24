--[[
	Minetest Ethereal Mod

	Created by ChinChow

	Updated by TenPlus1
]]

ethereal = {version = "20220424"}

local function setting(stype, name, default)

	local value

	if stype == "bool" then
		value = minetest.settings:get_bool("ethereal." .. name)
	elseif stype == "string" then
		value = minetest.settings:get("ethereal." .. name)
	elseif stype == "number" then
		value = tonumber(minetest.settings:get("ethereal." .. name))
	end

	if value == nil then
		value = default
	end

	ethereal[name] = value
end

-- DO NOT change settings below, use the settings.conf file instead

setting("number", "leaftype", 0)
setting("bool", "leafwalk", false)
setting("number", "bamboo", 1)
setting("number", "healing", 1)
setting("number", "frost", 1)

local path = minetest.get_modpath("ethereal")

-- Load settings.conf file if found
local input = io.open(path.."/settings.conf", "r")
if input then
	dofile(path .. "/settings.conf")
	input:close()
	input = nil
end

-- Translation
local S = minetest.get_translator("ethereal")
ethereal.intllib = S

-- Falling node function
ethereal.check_falling = minetest.check_for_falling or nodeupdate

-- creative check
local creative_mode_cache = minetest.settings:get_bool("creative_mode")
function ethereal.check_creative(name)
	return creative_mode_cache or minetest.check_player_privs(name, {creative = true})
end

dofile(path .. "/plantlife.lua")
dofile(path .. "/crystal.lua")
dofile(path .. "/water.lua")
dofile(path .. "/dirt.lua")
dofile(path .. "/food.lua")
dofile(path .. "/wood.lua")
dofile(path .. "/leaves.lua")
dofile(path .. "/sapling.lua")
dofile(path .. "/extra.lua")
dofile(path .. "/sealife.lua")
dofile(path .. "/fences.lua")
dofile(path .. "/biomes.lua")
dofile(path .. "/schems.lua")
dofile(path .. "/decor.lua")
dofile(path .. "/stairs.lua")

print ("[MOD] Ethereal loaded")
