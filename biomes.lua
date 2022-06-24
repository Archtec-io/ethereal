local S = ethereal.intllib

-- Blue Marble Nodes
minetest.register_node("ethereal:blue_marble", {
	description = S("Blue Marble"),
	tiles = {"ethereal_blue_marble.png"},
	groups = {cracky = 1, stone = 1},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("ethereal:blue_marble_tile", {
	description = S("Blue Marble Tile"),
	tiles = {"ethereal_blue_marble_tile.png"},
	groups = {cracky = 1, stone = 1},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_craft({
	output = "ethereal:blue_marble_tile 9",
	recipe = {
		{"ethereal:blue_marble", "ethereal:blue_marble", "ethereal:blue_marble"},
		{"ethereal:blue_marble", "ethereal:blue_marble", "ethereal:blue_marble"},
		{"ethereal:blue_marble", "ethereal:blue_marble", "ethereal:blue_marble"}
	}
})

-- helper strings
local tmp, tmp2

-- helper function
local add_biome = function(a, l, m, n, o, p, b, c, d, e, f, g, nd, na, ns)

	-- if not 1 then biome disabled, don't add
	if p ~= 1 then return end

	minetest.register_biome({
		name = a,
		node_dust = b,
		node_top = c,
		depth_top = d,
		node_filler = e,
		depth_filler = f,
		node_stone = g,
--		node_water_top = h,
--		depth_water_top = i,
--		node_water = j,
--		node_river_water = k,
		y_min = l,
		y_max = m,
		heat_point = n,
		humidity_point = o,

		node_dungeon = nd or "default:cobble",
		node_dungeon_alt = (nd and "") or "default:mossycobble",
		node_dungeon_stair = ns or "stairs:stair_cobble"
	})
end

add_biome("bamboo", 40, 60, 60, 75, ethereal.bamboo,
	nil, "ethereal:bamboo_dirt", 1, "default:dirt", 3)

add_biome("frost", 90, 100, 5, 40, ethereal.frost,
	nil, "ethereal:crystal_dirt", 1, "default:dirt", 3)
