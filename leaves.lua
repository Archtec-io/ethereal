local S = ethereal.intllib

-- set leaftype (value inside init.lua)
local leaftype = "plantlike"
local leafscale = 1.4

if ethereal.leaftype ~= 0 then
	leaftype = "allfaces_optional"
	leafscale = 1.0
end

-- redwood leaves
minetest.register_node("ethereal:redwood_leaves", {
	description = S("Redwood Leaves"),
	drawtype = leaftype,
	visual_scale = leafscale,
	tiles = {"ethereal_redwood_leaves.png"},
	inventory_image = "ethereal_redwood_leaves.png",
	wield_image = "ethereal_redwood_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:redwood_sapling"}, rarity = 50},
			{items = {"ethereal:redwood_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves
})

-- healing tree leaves
minetest.register_node("ethereal:yellowleaves", {
	description = S("Healing Tree Leaves"),
	drawtype = leaftype,
	visual_scale = leafscale,
	tiles = {"ethereal_yellow_leaves.png"},
	inventory_image = "ethereal_yellow_leaves.png",
	wield_image = "ethereal_yellow_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:yellow_tree_sapling"}, rarity = 50},
			{items = {"ethereal:yellowleaves"}}
		}
	},
	-- one leaf heals half a heart when eaten
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
	light_source = 9
})

-- frost tree leaves
minetest.register_node("ethereal:frost_leaves", {
	description = S("Frost Leaves"),
	drawtype = leaftype,
	visual_scale = leafscale,
	tiles = {"ethereal_frost_leaves.png"},
	inventory_image = "ethereal_frost_leaves.png",
	wield_image = "ethereal_frost_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, puts_out_fire = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:frost_tree_sapling"}, rarity = 15},
			{items = {"ethereal:frost_leaves"}}
		}
	},
	light_source = 9,
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves
})

-- bamboo stalk leaves
minetest.register_node("ethereal:bamboo_leaves", {
	description = S("Bamboo Leaves"),
	drawtype = leaftype,
	visual_scale = leafscale,
	tiles = {"ethereal_bamboo_leaves.png"},
	inventory_image = "ethereal_bamboo_leaves.png",
	wield_image = "ethereal_bamboo_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:bamboo_sprout"}, rarity = 10},
			{items = {"ethereal:bamboo_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves
})

-- hedge block
minetest.register_node("ethereal:bush", {
	description = S("Bush"),
	tiles = {"ethereal_bush.png"},
	walkable = true,
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_craft({
	output = "ethereal:bush",
	recipe = {
		{"group:leaves", "group:leaves", "group:leaves"},
		{"group:leaves", "ethereal:bamboo_leaves", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"}
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:bush",
	burntime = 1
})

-- bush block #2
minetest.register_node("ethereal:bush2", {
	drawtype = "allfaces_optional",
	description = S("Bush #2"),
	tiles = {"default_aspen_leaves.png"},
	paramtype = "light",
	walkable = true,
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_craft({
	output = "ethereal:bush2",
	recipe = {
		{"group:leaves", "group:leaves", "group:leaves"},
		{"group:leaves", "default:aspen_leaves", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"}
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:bush2",
	burntime = 1
})

-- bush block #3
minetest.register_node("ethereal:bush3", {
	drawtype = "allfaces_optional",
	description = S("Bush #3"),
	tiles = {"default_pine_needles.png"},
	paramtype = "light",
	walkable = true,
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_craft({
	output = "ethereal:bush3",
	recipe = {
		{"group:leaves", "group:leaves", "group:leaves"},
		{"group:leaves", "default:pine_needles", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"}
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:bush3",
	burntime = 1
})

-- compatibility check for new mt version with leafdecay function
if minetest.registered_nodes["default:dirt_with_rainforest_litter"] then

default.register_leafdecay({
	trunks = {"ethereal:redwood_trunk"},
	leaves = {"ethereal:redwood_leaves"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:frost_tree"},
	leaves = {"ethereal:frost_leaves"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:yellow_trunk"},
	leaves = {"ethereal:yellowleaves", "ethereal:golden_apple"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:bamboo"},
	leaves = {"ethereal:bamboo_leaves"},
	radius = 2
})

end
