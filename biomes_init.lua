
--[[

	Apologies for any breakages to current biomes or mods, the following code was
	forced by wsor4035 so that Ethereal would be approved for contentdb inclusion

]]--


local old_biomes = {}
local old_decor = {}


-- backup registered biome data
for key, def in pairs(minetest.registered_biomes) do
	old_biomes[key] = def
end

for key, def in pairs(minetest.registered_decorations) do
	old_decor[key] = def
end


-- clear current biome data
minetest.clear_registered_biomes()
minetest.clear_registered_decorations()
-- minetest.clear_registered_ores()


-- create list of default biomes to remove
local def_biomes = {
	["rainforest_swamp"] = 1,
	["grassland_dunes"] = 1,
	["cold_desert"] = 1,
	["taiga"] = 1,
	["icesheet_ocean"] = 1,
	["snowy_grassland_under"] = 1,
	["desert"] = 1,
	["deciduous_forest"] = 1,
	["taiga_ocean"] = 1,
	["desert_ocean"] = 1,
	["tundra_ocean"] = 1,
	["snowy_grassland_ocean"] = 1,
	["sandstone_desert"] = 1,
	["tundra_under"] = 1,
	["coniferous_forest_ocean"] = 1,
	["tundra"] = 1,
	["sandstone_desert_under"] = 1,
	["grassland"] = 1,
	["rainforest"] = 1,
	["grassland_ocean"] = 1,
	["tundra_beach"] = 1,
	["rainforest_under"] = 1,
	["savanna_under"] = 1,
	["icesheet"] = 1,
	["savanna_ocean"] = 1,
	["tundra_highland"] = 1,
	["savanna"] = 1,
	["cold_desert_under"] = 1,
	["cold_desert_ocean"] = 1,
	["desert_under"] = 1,
	["taiga_under"] = 1,
	["savanna_shore"] = 1,
	["sandstone_desert_ocean"] = 1,
	["snowy_grassland"] = 1,
	["coniferous_forest_under"] = 1,
	["deciduous_forest_ocean"] = 1,
	["grassland_under"] = 1,
	["icesheet_under"] = 1,
	["rainforest_ocean"] = 1,
	["deciduous_forest_shore"] = 1,
	["deciduous_forest_under"] = 1,
	["coniferous_forest_dunes"] = 1,
	["coniferous_forest"] = 1
}


-- only re-register biomes that aren't on the list
for key, def in pairs(old_biomes) do

	if not def_biomes[key] then
		minetest.register_biome(def)
	else
--		print("-- biome", key, "removed!")
	end
end


-- only re-register decorations that don't appear in any of the above biomes
for key, def in pairs(old_decor) do

	local can_add = true

	if type(def.biomes) == "table" then

		for num, bio in pairs(def.biomes) do

			if def_biomes[bio] then
				can_add = false ; break
			end
		end
	else
		if def_biomes[def.biomes] then
			can_add = false
		end
	end

	if can_add == true then
		minetest.register_decoration(def)
	else
--		print("-- decor", key, "removed!")
	end
end
