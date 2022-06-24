local S = ethereal.intllib

-- Ice Brick
minetest.register_node("ethereal:icebrick", {
	description = S("Ice Brick"),
	tiles = {"ethereal_brick_ice.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_glass_defaults()
})

minetest.register_craft({
	output = "ethereal:icebrick 4",
	recipe = {
		{"default:ice", "default:ice"},
		{"default:ice", "default:ice"}
	}
})

-- Snow Brick
minetest.register_node("ethereal:snowbrick", {
	description = S("Snow Brick"),
	tiles = {"ethereal_brick_snow.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {crumbly = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_snow_footstep", gain = 0.15},
		dug = {name = "default_snow_footstep", gain = 0.2},
		dig = {name = "default_snow_footstep", gain = 0.2}
	})
})

minetest.register_craft({
	output = "ethereal:snowbrick 4",
	recipe = {
		{"default:snowblock", "default:snowblock"},
		{"default:snowblock", "default:snowblock"}
	}
})
