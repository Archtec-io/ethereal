local path = minetest.get_modpath("ethereal") .. "/schematics/"
local dpath = minetest.get_modpath("default") .. "/schematics/"

-- load schematic tables
dofile(path .. "bamboo_tree.lua")
dofile(path .. "bush.lua")
dofile(path .. "frosttrees.lua")
dofile(path .. "yellowtree.lua")
dofile(path .. "redwood_tree.lua")
dofile(path .. "redwood_small_tree.lua")

-- helper function
local add_schem = function(a, b, c, d, e, f, g, h, i, j, k)

	-- if not 1 then biome disabled, don't add
	if g ~= 1 then return end

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = a,
		sidelen = 80,
		fill_ratio = b,
		biomes = c,
		y_min = d,
		y_max = e,
		schematic = f,
		flags = "place_center_x, place_center_z",
		replacements = h,
		spawn_by = i,
		num_spawn_by = j,
		rotation = k
	})
end

-- redwood tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_dry_grass", "default:dry_dirt_with_dry_grass"},
	fill_ratio = 0.0025,
	sidelen = 80,
	biomes = "savanna",
	y_min = 1,
	y_max = 80,
	schematic = ethereal.redwood_tree,
	flags = "place_center_x, place_center_z",
	replacements = nil,
	spawn_by = "default:dirt_with_dry_grass",
	num_spawn_by = 8,
})

-- healing tree
add_schem({"default:dirt_with_snow"}, 0.01, {"taiga"}, 120, 140,
	ethereal.yellowtree, ethereal.alpine, nil, "default:dirt_with_snow", 8)

-- crystal frost tree
add_schem({"ethereal:crystal_dirt"}, 0.01, {"frost"}, 90, 100,
	ethereal.frosttrees, ethereal.frost, nil,
	"ethereal:crystal_dirt", 8)

-- bamboo tree
add_schem({"ethereal:bamboo_dirt"}, 0.025, {"bamboo"}, 40, 100,
	ethereal.bambootree, ethereal.bamboo)

-- bush
add_schem({"ethereal:bamboo_dirt"}, 0.08, {"bamboo"}, 1, 100, ethereal.bush,
	ethereal.bamboo)
