local S = ethereal.intllib

-- redwood trunk
minetest.register_node("ethereal:redwood_trunk", {
	description = S("Redwood Trunk"),
	tiles = {
		"ethereal_redwood_trunk_top.png",
		"ethereal_redwood_trunk_top.png",
		"ethereal_redwood_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node
})

-- redwood wood
minetest.register_node("ethereal:redwood_wood", {
	description = S("Redwood Wood"),
	tiles = {"ethereal_redwood_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node
})

minetest.register_craft({
	output = "ethereal:redwood_wood 4",
	recipe = {{"ethereal:redwood_trunk"}}
})

-- frost trunk
minetest.register_node("ethereal:frost_tree", {
	description = S("Frost Tree"),
	tiles = {
		"ethereal_frost_tree_top.png",
		"ethereal_frost_tree_top.png",
		"ethereal_frost_tree.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, puts_out_fire = 1},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node
})

-- frost wood
minetest.register_node("ethereal:frost_wood", {
	description = S("Frost Wood"),
	tiles = {"ethereal_frost_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node
})

minetest.register_craft({
	output = "ethereal:frost_wood 4",
	recipe = {{"ethereal:frost_tree"}}
})

-- healing trunk
minetest.register_node("ethereal:yellow_trunk", {
	description = S("Healing Tree Trunk"),
	tiles = {
		"ethereal_yellow_tree_top.png",
		"ethereal_yellow_tree_top.png",
		"ethereal_yellow_tree.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, puts_out_fire = 1},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node
})

-- healing wood
minetest.register_node("ethereal:yellow_wood", {
	description = S("Healing Tree Wood"),
	tiles = {"ethereal_yellow_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node
})

minetest.register_craft({
	output = "ethereal:yellow_wood 4",
	recipe = {{"ethereal:yellow_trunk"}}
})

-- Bamboo (thanks to Nelo-slay on DeviantArt for the free Bamboo base image)
minetest.register_node("ethereal:bamboo", {
	description = S("Bamboo"),
	drawtype = "plantlike",
	tiles = {"ethereal_bamboo_trunk.png"},
	inventory_image = "ethereal_bamboo_trunk.png",
	wield_image = "ethereal_bamboo_trunk.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {choppy = 3, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),
	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:bamboo",
	burntime = 2
})
