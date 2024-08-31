
-- register biome helper

local function register_biome(enabled, def)

	if enabled ~= 1 then return end

	def.node_dungeon = def.node_dungeon or "default:cobble"
	def.node_dungeon_alt = def.node_dungeon and "" or "default:mossycobble"
	def.node_dungeon_stair = def.node_dungeon_stair or "stairs:stair_cobble"

	if def.y_max > 0 and def.node_riverbed == nil then
		def.node_riverbed = "default:sand" ; def.depth_riverbed = 2
	end

	minetest.register_biome(def)

--[[print('{"name": "' .. def.name .. '", "heat_point": ' ..def.heat_point .. ', "humidity_point": '
	.. def.humidity_point .. ', "y_min": ' .. def.y_min .. ', "y_max": ' .. def.y_max .. '}')]]

end

-- mountain

register_biome(1, {
	name = "mountain",
	heat_point = 50, humidity_point = 50, y_min = 140, y_max = 31000,
	node_top = "default:snow", depth_top = 1,
	node_filler = "default:snowblock", depth_filler = 2})

-- grassland

register_biome(1, {
	name = "grassland",
	heat_point = 50, humidity_point = 35, y_min = 3, y_max = 71,
	node_top = "default:dirt_with_grass", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(1, {
	name = "grassland_ocean",
	heat_point = 50, humidity_point = 35, y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 3})

register_biome(1, {
	name = "grassland_under",
	node_cave_liquid = {"default:water_source", "default:lava_source"},
	heat_point = 50, humidity_point = 55, y_min = -31000, y_max = -256})

-- desert

register_biome(ethereal.desert, {
	name = "desert",
	heat_point = 92, humidity_point = 16, y_min = 3, y_max = 23,
	node_top = "default:desert_sand", depth_top = 1,
	node_filler = "default:desert_sand", depth_filler = 3,
	node_stone = "default:desert_stone",
	node_dungeon_alt = "",
	node_dungeon = "default:desert_stone",
	node_dungeon_stair = "stairs:stair_desert_stone"})

register_biome(ethereal.desert, {
	name = "desert_ocean",
	heat_point = 92, humidity_point = 16, y_min = -192, y_max = 3,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2,
	node_stone = "default:desert_stone",
	node_dungeon_alt = "",
	node_dungeon = "default:desert_stone",
	node_dungeon_stair = "stairs:stair_desert_stone"})

register_biome(ethereal.desert, {
	name = "desert_under",
	heat_point = 92, humidity_point = 16, y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})

-- bamboo

register_biome(ethereal.bamboo, {
	name = "bamboo",
	heat_point = 45, humidity_point = 45, y_min = 3, y_max = 70,
	node_top = "ethereal:bamboo_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.bamboo, {
	name = "bamboo_ocean",
	heat_point = 45, humidity_point = 45, y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

-- mesa

register_biome(ethereal.mesa, {
	name = "mesa",
	heat_point = 25, humidity_point = 10, y_min = 1, y_max = 71,
	node_top = "default:dirt_with_dry_grass", depth_top = 1,
	node_filler = "bakedclay:orange", depth_filler = 15})

register_biome(ethereal.mesa, {
	name = "mesa_ocean",
	heat_point = 25, humidity_point = 10, y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

-- coniferous forest

register_biome(ethereal.snowy, {
	name = "coniferous_forest",
	heat_point = 45, humidity_point = 70, y_min = 6, y_max = 140,
	node_top = "default:dirt_with_coniferous_litter", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 2})

register_biome(ethereal.snowy, {
	name = "coniferous_forest_dunes",
	heat_point = 45, humidity_point = 70, y_min = 4, y_max = 5,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 3,
	vertical_blend = 1})

register_biome(ethereal.snowy, {
	name = "coniferous_forest_ocean",
	heat_point = 45, humidity_point = 70, y_min = -255, y_max = 3,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

register_biome(ethereal.snowy, {
	name = "coniferous_forest_under",
	heat_point = 45, humidity_point = 70, y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})

-- taiga

register_biome(ethereal.alpine, {
	name = "taiga",
	heat_point = 25, humidity_point = 70, y_min = 4, y_max = 140,
	node_top = "default:dirt_with_snow", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 2})

register_biome(ethereal.alpine, {
	name = "taiga_ocean",
	heat_point = 25, humidity_point = 70, y_min = -255, y_max = 3,
	node_dust = "default:snow",
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 3,
	node_cave_liquid = "default:water_source",
	vertical_blend = 1})

register_biome(ethereal.alpine, {
	name = "taiga_under",
	heat_point = 25, humidity_point = 70, y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})

-- frost

register_biome(ethereal.frost, {
	name = "frost_floatland",
	heat_point = 5, humidity_point = 60, y_min = 1025, y_max = 1750,
	node_top = "ethereal:crystal_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 1})

register_biome(ethereal.frost, {
	name = "frost",
	heat_point = 5, humidity_point = 60, y_min = 1, y_max = 71,
	node_top = "ethereal:crystal_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

-- cold (inbetween frost and taiga/jumble)

register_biome(1, {
	name = "cold_grass",
	heat_point = 15, humidity_point = 58, y_min = 2, y_max = 30,
	node_top = "ethereal:cold_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

-- deciduous forest

register_biome(ethereal.grassy, {
	name = "deciduous_forest",
	heat_point = 60, humidity_point = 68, y_min = 3, y_max = 91,
	node_top = "default:dirt_with_grass", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.grassy, {
	name = "deciduous_forest_ocean",
	heat_point = 60, humidity_point = 68, y_min = -31000, y_max = 3,
	node_top = "default:sand", depth_top = 2,
	node_filler = "default:gravel", depth_filler = 1})

register_biome(ethereal.grassy, {
	name = "deciduous_forest_under",
	heat_point = 60, humidity_point = 68, y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})

-- caves

register_biome(ethereal.caves, {
	name = "caves",
	heat_point = 70, humidity_point = 5, y_min = 4, y_max = 41,
	node_top = "default:desert_stone", depth_top = 3,
	node_filler = "air", depth_filler = 8})

-- grayness

register_biome(ethereal.grayness, {
	name = "grayness",
	heat_point = 15, humidity_point = 30, y_min = 2, y_max = 41,
	node_top = "ethereal:gray_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.grayness, {
	name = "grayness_ocean",
	heat_point = 10, humidity_point = 10, y_min = -18, y_max = 2,
	node_top = "default:silver_sand", depth_top = 2,
	node_filler = "default:sand", depth_filler = 2,
	node_stone = "ethereal:blue_marble"})

register_biome(ethereal.grayness, {
	name = "grayness_under",
	heat_point = 10, humidity_point = 10, y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})

-- grassy two

register_biome(ethereal.grassytwo, {
	name = "grassytwo",
	heat_point = 15, humidity_point = 25, y_min = 1, y_max = 91,
	node_top = "default:dirt_with_grass", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.grassytwo, {
	name = "grassytwo_ocean",
	heat_point = 15, humidity_point = 25, y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

-- prairie

register_biome(ethereal.prairie, {
	name = "prairie",
	heat_point = 30, humidity_point = 35, y_min = 3, y_max = 26,
	node_top = "ethereal:prairie_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.prairie, {
	name = "prairie_ocean",
	heat_point = 30, humidity_point = 35, y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

-- jumble

register_biome(ethereal.jumble, {
	name = "jumble",
	heat_point = 25, humidity_point = 55, y_min = 1, y_max = 71,
	node_top = "default:dirt_with_grass", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.jumble, {
	name = "jumble_ocean",
	heat_point = 25, humidity_point = 55, y_min = -192, y_max = 1,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

-- jungle

register_biome(ethereal.junglee, {
	name = "junglee",
	heat_point = 86, humidity_point = 65, y_min = 1, y_max = 71,
	node_top = "default:dirt_with_rainforest_litter", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.junglee, {
	name = "junglee_ocean",
	heat_point = 86, humidity_point = 65, y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

register_biome(ethereal.junglee, {
	name = "junglee_under",
	heat_point = 86, humidity_point = 65, y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})

-- swamp

register_biome(ethereal.swamp, {
	name = "swamp",
	heat_point = 80, humidity_point = 90, y_min = 1, y_max = 7,
	node_top = "default:dirt_with_grass", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.quicksand, {
	name = "swamp_beach",
	heat_point = 80, humidity_point = 90, y_min = -1, y_max = 0,
	node_top = "ethereal:quicksand2", depth_top = 3,
	node_filler = "default:clay", depth_filler = 2,
	vertical_blend = 1})

register_biome(ethereal.swamp, {
	name = "swamp_ocean",
	heat_point = 80, humidity_point = 90, y_min = -192, y_max = -1,
	node_top = "default:sand", depth_top = 2,
	node_filler = "default:clay", depth_filler = 2,
	vertical_blend = 2})

-- grove

register_biome(ethereal.grove, {
	name = "grove",
	heat_point = 40, humidity_point = 25, y_min = 3, y_max = 23,
	node_top = "ethereal:grove_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.grove, {
	name = "grove_ocean",
	heat_point = 40, humidity_point = 25, y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

-- meditteranean

register_biome(ethereal.mediterranean, {
	name = "mediterranean",
	heat_point = 30, humidity_point = 45, y_min = 3, y_max = 50,
	node_top = "ethereal:grove_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

-- mushroom

register_biome(ethereal.mushroom, {
	name = "mushroom",
	heat_point = 45, humidity_point = 82, y_min = 3, y_max = 50,
	node_top = "ethereal:mushroom_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.mushroom, {
	name = "mushroom_ocean",
	heat_point = 45, humidity_point = 82, y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

-- sandstone desert

register_biome(ethereal.sandstone, {
	name = "sandstone_desert",
	heat_point = 60, humidity_point = 0, y_min = 3, y_max = 23,
	node_top = "default:sandstone", depth_top = 1,
	node_filler = "default:sandstone", depth_filler = 1,
	node_stone = "default:sandstone",
	node_dungeon_alt = "",
	node_dungeon = "default:sandstone",
	node_dungeon_stair = "stairs:stair_sandstone"})

register_biome(ethereal.sandstone, {
	name = "sandstone_desert_ocean",
	heat_point = 60, humidity_point = 0, y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2,
	node_stone = "default:sandstone",
	node_dungeon_alt = "",
	node_dungeon = "default:sandstone",
	node_dungeon_stair = "stairs:stair_sandstone"})

register_biome(ethereal.sandstone, {
	name = "sandstone_desert_under",
	heat_point = 60, humidity_point = 0, y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})

-- plains

register_biome(ethereal.plains, {
	name = "plains",
	heat_point = 74, humidity_point = 23, y_min = 3, y_max = 25,
	node_top = "ethereal:dry_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.plains, {
	name = "plains_ocean",
	heat_point = 74, humidity_point = 23, y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

-- savanna

register_biome(ethereal.savanna, {
	name = "savanna",
	heat_point = 89, humidity_point = 42, y_min = 3, y_max = 50,
	node_top = "default:dry_dirt_with_dry_grass", depth_top = 1,
	node_filler = "default:dry_dirt", depth_filler = 3})

register_biome(ethereal.savanna, {
	name = "savanna_ocean",
	heat_point = 89, humidity_point = 42, y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

register_biome(ethereal.savanna, {
	name = "savanna_under",
	heat_point = 89, humidity_point = 42, y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})

-- fiery

register_biome(ethereal.fiery, {
	name = "fiery",
	heat_point = 80, humidity_point = 10, y_min = 5, y_max = 20,
	node_top = "ethereal:fiery_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.fiery, {
	name = "fiery_beach",
	heat_point = 80, humidity_point = 10, y_min = 1, y_max = 4,
	node_top = "default:desert_sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

register_biome(ethereal.fiery, {
	name = "fiery_ocean",
	heat_point = 80, humidity_point = 10, y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

register_biome(ethereal.fiery, {
	name = "fiery_under",
	heat_point = 80, humidity_point = 10, y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:lava_source"}})

-- glacier

register_biome(ethereal.glacier, {
	name = "glacier",
	heat_point = 0, humidity_point = 73, y_min = -8, y_max = 31000,
	node_dust = "default:snowblock",
	node_top = "default:snowblock", depth_top = 1,
	node_filler = "default:snowblock", depth_filler = 3,
	node_stone = "default:ice",
	node_water_top = "default:ice", depth_water_top = 10,
	node_river_water = "default:ice",
	node_riverbed = "default:gravel", depth_riverbed = 2,
	node_dungeon = "ethereal:icebrick",
	node_dungeon_stair = "stairs:stair_ice"})

register_biome(ethereal.glacier, {
	name = "glacier_ocean",
	heat_point = 0, humidity_point = 73, y_min = -112, y_max = -9,
	node_dust = "default:snowblock",
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 3})

register_biome(ethereal.glacier, {
	name = "glacier_under",
	heat_point = 0, humidity_point = 73, y_max = -256, y_min = -31000,
	node_cave_liquid = {"default:water_source", "default:lava_source"},
	node_dungeon = "default:cobble",
	node_dungeon_alt = "default:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble"})

-- tundra

register_biome(ethereal.tundra, {
	name = "tundra_highland",
	heat_point = 0, humidity_point = 40, y_max = 180, y_min = 47,
	node_dust = "default:snow",
	node_riverbed = "default:gravel", depth_riverbed = 2})

register_biome(ethereal.tundra, {
	name = "tundra",
	heat_point = 0, humidity_point = 40, y_max = 46, y_min = 2,
	node_top = "default:permafrost_with_stones", depth_top = 1,
	node_filler = "default:permafrost", depth_filler = 1,
	node_riverbed = "default:gravel", depth_riverbed = 2,
	vertical_blend = 4})

register_biome(ethereal.tundra, {
	name = "tundra_beach",
	heat_point = 0, humidity_point = 40, y_max = 1, y_min = -3,
	node_top = "default:gravel", depth_top = 1,
	node_filler = "default:gravel", depth_filler = 2,
	node_riverbed = "default:gravel", depth_riverbed = 2,
	vertical_blend = 1})

register_biome(ethereal.tundra, {
	name = "tundra_ocean",
	heat_point = 0, humidity_point = 40, y_max = -4, y_min = -112,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 3,
	node_riverbed = "default:gravel", depth_riverbed = 2,
	vertical_blend = 1})

register_biome(ethereal.tundra, {
	name = "tundra_under",
	heat_point = 0, humidity_point = 40, y_max = -256, y_min = -31000,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})

-- Cold desert (was heat, humidity 40,0, changed to 20,85 to fill biome gap)

register_biome(1, {
	name = "cold_desert",
	heat_point = 20, humidity_point = 85, y_min = 4, y_max = 100,
	node_top = "default:silver_sand", depth_top = 1,
	node_filler = "default:silver_sand", depth_filler = 1})

register_biome(1, {
	name = "cold_desert_ocean",
	heat_point = 20, humidity_point = 85, y_min = -255, y_max = 3,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 3,
	node_cave_liquid = "default:water_source",
	vertical_blend = 1})

register_biome(1, {
	name = "cold_desert_under",
	node_cave_liquid = {"default:water_source", "default:lava_source"},
	heat_point = 20, humidity_point = 85, y_min = -31000, y_max = -256})
