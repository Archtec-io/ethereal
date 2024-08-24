
-- path to default and ethereal schematics

local path = minetest.get_modpath("ethereal") .. "/schematics/"
local dpath = minetest.get_modpath("default") .. "/schematics/"

-- load schematic tables

dofile(path .. "orange_tree.lua")
dofile(path .. "banana_tree.lua")
dofile(path .. "bamboo_tree.lua")
dofile(path .. "birch_tree.lua")
dofile(path .. "bush.lua")
dofile(path .. "waterlily.lua")
dofile(path .. "volcanom.lua")
dofile(path .. "volcanol.lua")
dofile(path .. "frosttrees.lua")
dofile(path .. "palmtree.lua")
dofile(path .. "pinetree.lua")
dofile(path .. "yellowtree.lua")
dofile(path .. "mushroomone.lua")
dofile(path .. "mushroomtwo.lua")
dofile(path .. "willow.lua")
dofile(path .. "bigtree.lua")
dofile(path .. "redwood_tree.lua")
dofile(path .. "redwood_small_tree.lua")
dofile(path .. "vinetree.lua")
dofile(path .. "sakura.lua")
dofile(path .. "igloo.lua")
dofile(path .. "lemon_tree.lua")
dofile(path .. "olive_tree.lua")
dofile(path .. "basandra_bush.lua")

-- register decoration helper

local function register_decoration(enabled, def)

	if enabled ~= 1 then return end

	def.sidelen = def.sidelen or 80 -- some handy defaults
	def.deco_type = "schematic"
	def.y_min = def.y_min or 1
	def.y_max = def.y_max or 100
	def.flags = def.flags or "place_center_x, place_center_z"

	minetest.register_decoration(def)
end

-- igloo

register_decoration(ethereal.glacier, {
	place_on = "default:snowblock",
	fill_ratio = 0.0005,
	biomes = {"glacier"},
	y_min = 3, y_max = 50,
	schematic = ethereal.igloo,
	spawn_by = "default:snowblock", num_spawn_by = 8,
	rotation = "random"})

-- sakura tree

register_decoration(ethereal.sakura, {
	place_on = "ethereal:bamboo_dirt",
	fill_ratio = 0.001,
	biomes = {"sakura"},
	y_min = 7, y_max = 100,
	schematic = ethereal.sakura_tree,
	spawn_by = "ethereal:bamboo_dirt", num_spawn_by = 6})

-- redwood tree

register_decoration(ethereal.mesa, {
	place_on = "default:dirt_with_dry_grass",
	fill_ratio = 0.0025,
	biomes = {"mesa"},
	schematic = ethereal.redwood_tree,
	flags = "place_center_x, place_center_z",
	spawn_by = "default:dirt_with_dry_grass", num_spawn_by = 8})

-- banana tree

register_decoration(ethereal.grove, {
	place_on = "ethereal:grove_dirt",
	fill_ratio = 0.015,
	biomes = {"grove"},
	schematic = ethereal.bananatree})

-- healing tree

register_decoration(ethereal.alpine, {
	place_on = "default:dirt_with_snow",
	fill_ratio = 0.01,
	biomes = {"taiga"},
	y_min = 120, y_max = 140,
	schematic = ethereal.yellowtree,
	spawn_by = "default:dirt_with_snow", num_spawn_by = 8})

-- crystal frost tree

register_decoration(ethereal.frost, {
	place_on = "ethereal:crystal_dirt",
	fill_ratio = 0.01,
	biomes = {"frost", "frost_floatland"},
	y_min = 1, y_max = 1750,
	schematic = ethereal.frosttrees,
	spawn_by = "ethereal:crystal_dirt", num_spawn_by = 8})

-- giant red mushroom

register_decoration(ethereal.mushroom, {
	place_on = "ethereal:mushroom_dirt",
	fill_ratio = 0.02,
	biomes = {"mushroom"},
	y_min = 3, y_max = 25,
	schematic = ethereal.mushroomone,
	spawn_by = "ethereal:mushroom_dirt", num_spawn_by = 8})

-- giant brown mushroom

register_decoration(ethereal.mushroom, {
	place_on = "ethereal:mushroom_dirt",
	fill_ratio = 0.02,
	biomes = {"mushroom"},
	y_min = 26, y_max = 50,
	schematic = ethereal.mushroomtwo,
	rotation = "random"})

-- small lava crater

register_decoration(ethereal.fiery, {
	place_on = "ethereal:fiery_dirt",
	fill_ratio = 0.01,
	biomes = {"fiery"},
	schematic = ethereal.volcanom,
	spawn_by = "ethereal:fiery_dirt", num_spawn_by = 6})

-- large lava crater

register_decoration(ethereal.fiery, {
	place_on = "ethereal:fiery_dirt",
	fill_ratio = 0.003,
	biomes = {"fiery"},
	schematic = ethereal.volcanol,
	spawn_by = "ethereal:fiery_dirt", num_spawn_by = 4,
	rotation = "random"})

-- basandra bush

register_decoration(ethereal.fiery, {
	place_on = "ethereal:fiery_dirt",
	fill_ratio = 0.04,
	biomes = {"fiery"},
	schematic = ethereal.basandrabush})

-- default jungle tree

register_decoration(ethereal.junglee, {
	place_on = "default:dirt_with_rainforest_litter",
	fill_ratio = 0.08,
	biomes = {"junglee"},
	schematic = dpath .. "jungle_tree.mts"})

-- willow tree

register_decoration(ethereal.grayness, {
	place_on = "ethereal:gray_dirt",
	fill_ratio = 0.02,
	biomes = {"grayness"},
	schematic = ethereal.willow,
	spawn_by = "ethereal:gray_dirt", num_spawn_by = 6})

-- default large pine tree for lower elevation

register_decoration(ethereal.snowy, {
	place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
	fill_ratio = 0.025,
	biomes = {"coniferous_forest", "taiga"},
	y_min = 4, y_max = 50,
	schematic = dpath .. "pine_tree.mts"})

-- small pine for higher elevation

register_decoration(ethereal.snowy, {
	place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
	fill_ratio = 0.025,
	biomes = {"coniferous_forest", "taiga"},
	y_min = 50, y_max = 140,
	schematic = ethereal.pinetree})

-- default apple tree

register_decoration(ethereal.grassy, {
	place_on = "default:dirt_with_grass",
	fill_ratio = 0.025,
	biomes = {"jumble", "deciduous_forest"},
	schematic = dpath .. "apple_tree.mts"})

-- big old tree

register_decoration(ethereal.jumble, {
	place_on = "default:dirt_with_grass",
	fill_ratio = 0.001,
	biomes = {"jumble"},
	schematic = ethereal.bigtree,
	spawn_by = "default:dirt_with_grass", num_spawn_by = 8})

-- default aspen tree

register_decoration(ethereal.grassytwo, {
	place_on = "default:dirt_with_grass",
	fill_ratio = 0.02,
	biomes = {"grassytwo"},
	y_min = 1, y_max = 50,
	schematic = dpath .. "aspen_tree.mts"})

-- birch tree

register_decoration(ethereal.grassytwo, {
	place_on = "default:dirt_with_grass",
	fill_ratio = 0.02,
	biomes = {"grassytwo"},
	y_min = 50, y_max = 100,
	schematic = ethereal.birchtree})

-- orange tree

register_decoration(ethereal.prairie, {
	place_on = "ethereal:prairie_dirt",
	fill_ratio = 0.01,
	biomes = {"prairie"},
	schematic = ethereal.orangetree})

-- default acacia tree

register_decoration(ethereal.savanna, {
	place_on = {"default:dry_dirt_with_dry_grass", "default:dirt_with_dry_grass"},
	fill_ratio = 0.004,
	biomes = {"savanna"},
	schematic = dpath .. "acacia_tree.mts"})

-- palm tree

register_decoration(1, {
	place_on = "default:sand",
	fill_ratio = 0.0025,
	biomes = {"desert_ocean", "plains_ocean", "sandstone_ocean",
			"mesa_ocean", "grove_ocean", "deciduous_forest_ocean"},
	y_min = 1, y_max = 1,
	schematic = ethereal.palmtree})

-- bamboo tree

register_decoration(ethereal.bamboo, {
	place_on = "ethereal:bamboo_dirt",
	fill_ratio = 0.025,
	biomes = {"bamboo"},
	schematic = ethereal.bambootree})

-- bush

register_decoration(ethereal.bamboo, {
	place_on = "ethereal:bamboo_dirt",
	fill_ratio = 0.08,
	biomes = {"bamboo"},
	schematic = ethereal.bush,
	spawn_by = "ethereal:bamboo_dirt", num_spawn_by = 6})

-- vine tree

register_decoration(ethereal.swamp, {
	place_on = "default:dirt_with_grass",
	fill_ratio = 0.02,
	biomes = {"swamp"},
	schematic = ethereal.vinetree})

-- lemon tree

register_decoration(ethereal.mediterranean, {
	place_on = "ethereal:grove_dirt",
	fill_ratio = 0.002,
	biomes = {"mediterranean"},
	y_min = 5, y_max = 50,
	schematic = ethereal.lemontree})

-- olive tree

register_decoration(ethereal.mediterranean, {
	place_on = "ethereal:grove_dirt",
	fill_ratio = 0.002,
	biomes = {"mediterranean"},
	y_min = 5, y_max = 35,
	schematic = ethereal.olivetree})

-- default large cactus

register_decoration(ethereal.desert, {
	place_on = {"default:desert_sand"},
	noise_params = {
		offset = -0.0005, scale = 0.0015, spread = {x = 200, y = 200, z = 200},
		seed = 230, octaves = 3, persist = 0.6},
	biomes = {"desert"},
	y_min = 5, y_max = 100,
	schematic = dpath .. "large_cactus.mts",
	flags = "place_center_x",
	rotation = "random"})

-- default bush

register_decoration(1, {
	place_on = {"default:dirt_with_grass", "default:dirt_with_snow"},
	sidelen = 16,
	noise_params = {
		offset = -0.004, scale = 0.01, spread = {x = 100, y = 100, z = 100},
		seed = 137, octaves = 3, persist = 0.7},
	biomes = {"deciduous_forest", "grassytwo", "jumble"},
	schematic = dpath .. "bush.mts"})

-- default acacia bush

register_decoration(1, {
	place_on = {"default:dirt_with_dry_grass", "default:dry_dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.004, scale = 0.01, spread = {x = 100, y = 100, z = 100},
		seed = 90155, octaves = 3, persist = 0.7},
	biomes = {"savanna", "mesa"},
	schematic = dpath .. "acacia_bush.mts"})

-- default pine bush

register_decoration((minetest.registered_nodes["default:pine_bush"] and 1), {
	name = "default:pine_bush",
	place_on = {"default:dirt_with_snow"},
	sidelen = 16,
	noise_params = {
		offset = -0.004, scale = 0.01, spread = {x = 100, y = 100, z = 100},
		seed = 137, octaves = 3, persist = 0.7},
	biomes = {"taiga"},
	y_min = 4, y_max = 120,
	schematic = dpath .. "pine_bush.mts"})

-- default blueberry bush

register_decoration((minetest.registered_nodes["default:blueberry_bush_leaves"] and 1), {
	name = "default:blueberry_bush",
	place_on = {"default:dirt_with_coniferous_litter", "default:dirt_with_snow"},
	sidelen = 16,
	noise_params = {
		offset = -0.004, scale = 0.01, spread = {x = 100, y = 100, z = 100},
		seed = 697, octaves = 3, persist = 0.7},
	biomes = {"coniferous_forest", "taiga"},
	place_offset_y = 1,
	schematic = dpath .. "blueberry_bush.mts"})

-- place waterlily in beach areas

register_decoration(1, {
	place_on = {"default:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.12, scale = 0.3, spread = {x = 200, y = 200, z = 200},
		seed = 33, octaves = 3, persist = 0.7},
	biomes = {"desert_ocean", "plains_ocean", "mesa_ocean", "grove_ocean",
			"deciduous_forest_ocean", "swamp_ocean"},
	y_min = 0, y_max = 0,
	schematic = ethereal.waterlily,
	rotation = "random"})

-- coral reef

if ethereal.reefs == 1 then

	-- override corals so crystal shovel can pick them up intact
	minetest.override_item("default:coral_skeleton", {groups = {crumbly = 3}})
	minetest.override_item("default:coral_orange", {groups = {crumbly = 3}})
	minetest.override_item("default:coral_brown", {groups = {crumbly = 3}})

	register_decoration(1, {
		place_on = {"default:sand"},
		noise_params = {
			offset = -0.15, scale = 0.1, spread = {x = 100, y = 100, z = 100},
			seed = 7013, octaves = 3, persist = 1},
		biomes = {"desert_ocean", "grove_ocean"},
		y_min = -8, y_max = -2,
		schematic = path .. "corals.mts",
		rotation = "random"})
end

-- tree logs

if ethereal.logs == 1 then

	register_decoration(ethereal.prairie, {
		name = "default:apple_log",
		place_on = {"default:dirt_with_grass", "ethereal:prairie_dirt"},
		place_offset_y = 1,
		sidelen = 16,
		fill_ratio = 0.001,
		biomes = {"deciduous_forest", "jumble", "swamp", "prairie"},
		schematic = dpath .. "apple_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = {"default:dirt_with_grass", "ethereal:prairie_dirt"}, num_spawn_by = 8
	})

	register_decoration(ethereal.junglee, {
		name = "default:jungle_log",
		place_on = {"default:dirt_with_rainforest_litter"},
		place_offset_y = 1,
		sidelen = 80,
		fill_ratio = 0.005,
		biomes = {"junglee"},
		schematic = dpath .. "jungle_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "default:dirt_with_rainforest_litter", num_spawn_by = 8
	})

	register_decoration(ethereal.snowy, {
		name = "default:pine_log",
		place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
		place_offset_y = 1,
		sidelen = 80,
		fill_ratio = 0.0018,
		biomes = {"taiga", "coniferous_forest"},
		y_min = 4, y_max = 100,
		schematic = dpath .. "pine_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
		num_spawn_by = 8
	})

	register_decoration(ethereal.savanna, {
		name = "default:acacia_log",
		deco_type = "schematic",
		place_on = {"default:dry_dirt_with_dry_grass"},
		place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			offset = 0, scale = 0.001, spread = {x = 250, y = 250, z = 250},
			seed = 2, octaves = 3, persist = 0.66},
		biomes = {"savanna"},
		schematic = dpath .. "acacia_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "default:dry_dirt_with_dry_grass", num_spawn_by = 8
	})

	register_decoration(ethereal.plains, {
		name = "ethereal:scorched_log",
		place_on = {"ethereal:dry_dirt"},
		place_offset_y = 1,
		sidelen = 80,
		fill_ratio = 0.0018,
		biomes = {"plains"},
		y_min = 4, y_max = 100,
		schematic = {
			size = {x = 3, y = 1, z = 1},
			data = {
				{name = "ethereal:scorched_tree", param1 = 201, param2 = 16},
				{name = "ethereal:scorched_tree", param1 = 255, param2 = 16},
				{name = "ethereal:scorched_tree", param1 = 255, param2 = 16}
			}
		},
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "ethereal:dry_dirt", num_spawn_by = 8
	})

	register_decoration(ethereal.grove, {
		name = "ethereal:banana_log",
		place_on = {"ethereal:grove_dirt"},
		place_offset_y = 1,
		sidelen = 80,
		fill_ratio = 0.0018,
		biomes = {"grove"},
		y_min = 4, y_max = 100,
		schematic = {
			size = {x = 3, y = 1, z = 1},
			data = {
				{name = "ethereal:banana_trunk", param1 = 255, param2 = 16},
				{name = "ethereal:banana_trunk", param1 = 255, param2 = 16},
				{name = "ethereal:banana_trunk", param1 = 201, param2 = 16}
			}
		},
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "ethereal:grove_dirt", num_spawn_by = 8
	})
end
