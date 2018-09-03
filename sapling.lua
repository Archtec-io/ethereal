
local S = ethereal.intllib

-- Bamboo Sprout
minetest.register_node("ethereal:bamboo_sprout", {
	description = S("Bamboo Sprout"),
	drawtype = "plantlike",
	tiles = {"bamboo_sprout.png"},
	inventory_image = "bamboo_sprout.png",
	wield_image = "bamboo_sprout.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {
		food_bamboo_sprout = 1, snappy = 3, attached_node = 1, flammable = 2,
		dig_immediate = 3, ethereal_sapling = 1, sapling = 1,
	},
	sounds = default.node_sound_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0, 4 / 16}
	},
	on_use = minetest.item_eat(2),
	grown_height = 11,
})

-- Register Saplings
ethereal.register_sapling = function(name, desc, texture, height)

	minetest.register_node(name .. "_sapling", {
		description = S(desc .. " Tree Sapling"),
		drawtype = "plantlike",
		tiles = {texture .. ".png"},
		inventory_image = texture .. ".png",
		wield_image = texture .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = false,
		walkable = false,
		selection_box = {
			type = "fixed",
			fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
		},
		groups = {
			snappy = 2, dig_immediate = 3, flammable = 2,
			ethereal_sapling = 1, attached_node = 1, sapling = 1
		},
		sounds = default.node_sound_leaves_defaults(),
		grown_height = height,
	})
end

ethereal.register_sapling("ethereal:willow", "Willow", "willow_sapling", 14)
ethereal.register_sapling("ethereal:yellow_tree", "Healing", "yellow_tree_sapling", 19)
ethereal.register_sapling("ethereal:big_tree", "Big", "ethereal_big_tree_sapling", 7)
ethereal.register_sapling("ethereal:banana_tree", "Banana", "banana_tree_sapling", 8)
ethereal.register_sapling("ethereal:frost_tree", "Frost", "ethereal_frost_tree_sapling", 19)
ethereal.register_sapling("ethereal:mushroom", "Mushroom", "ethereal_mushroom_sapling", 11)
ethereal.register_sapling("ethereal:palm", "Palm", "moretrees_palm_sapling", 9)
ethereal.register_sapling("ethereal:redwood", "Redwood", "redwood_sapling", 31)
ethereal.register_sapling("ethereal:orange_tree", "Orange", "orange_tree_sapling", 6)
ethereal.register_sapling("ethereal:birch", "Birch", "moretrees_birch_sapling", 7)

ethereal.add_tree = function (pos, ofx, ofy, ofz, schem)
	-- check for schematic
	if not schem then
		print (S("Schematic not found"))
		return
	end
	-- remove sapling and place schematic
	minetest.swap_node(pos, {name = "air"})
	minetest.place_schematic(
		{x = pos.x - ofx, y = pos.y - ofy, z = pos.z - ofz},
		schem, 0, nil, false)
end

local path = minetest.get_modpath("ethereal").."/schematics/"

-- grow tree functions
function ethereal.grow_yellow_tree(pos)
	ethereal.add_tree(pos, 4, 0, 4, ethereal.yellowtree)
end

function ethereal.grow_big_tree(pos)
	ethereal.add_tree(pos, 4, 0, 4, ethereal.bigtree)
end

function ethereal.grow_banana_tree(pos)
	ethereal.add_tree(pos, 3, 0, 3, ethereal.bananatree)
end

function ethereal.grow_frost_tree(pos)
	ethereal.add_tree(pos, 4, 0, 4, ethereal.frosttrees)
end

function ethereal.grow_mushroom_tree(pos)
	ethereal.add_tree(pos, 4, 0, 4, ethereal.mushroomone)
end

function ethereal.grow_palm_tree(pos)
	ethereal.add_tree(pos, 4, 0, 4, ethereal.palmtree)
end

function ethereal.grow_willow_tree(pos)
	ethereal.add_tree(pos, 5, 0, 5, ethereal.willow)
end

function ethereal.grow_redwood_tree(pos)
	ethereal.add_tree(pos, 7, 0, 7, ethereal.redwood_tree)
end

function ethereal.grow_orange_tree(pos)
	ethereal.add_tree(pos, 1, 0, 1, ethereal.orangetree)
end

function ethereal.grow_bamboo_tree(pos)
	ethereal.add_tree(pos, 1, 0, 1, ethereal.bambootree)
end

function ethereal.grow_birch_tree(pos)
	ethereal.add_tree(pos, 2, 0, 2, ethereal.birchtree)
end

-- check if sapling has enough height room to grow
local function enough_height(pos, height)

	local nod = minetest.line_of_sight(
		{x = pos.x, y = pos.y + 1, z = pos.z},
		{x = pos.x, y = pos.y + height, z = pos.z})

	if not nod then
		return false -- obstructed
	else
		return true -- can grow
	end
end

ethereal.grow_sapling = function (pos, node)

	local under =  minetest.get_node({
		x = pos.x,
		y = pos.y - 1,
		z = pos.z
	}).name

	if not minetest.registered_nodes[node.name] then
		return
	end

	local height = minetest.registered_nodes[node.name].grown_height

	-- do we have enough height to grow sapling into tree?
	if not height or not enough_height(pos, height) then
		return
	end

	-- Check if Ethereal Sapling is growing on correct substrate
	if node.name == "ethereal:yellow_tree_sapling"
	and minetest.get_item_group(under, "soil") > 0 then
		ethereal.grow_yellow_tree(pos)

	elseif node.name == "ethereal:big_tree_sapling"
	and under == "default:dirt_with_grass" then
		ethereal.grow_big_tree(pos)

	elseif node.name == "ethereal:banana_tree_sapling"
	and under == "ethereal:grove_dirt" then
		ethereal.grow_banana_tree(pos)

	elseif node.name == "ethereal:frost_tree_sapling"
	and under == "ethereal:crystal_dirt" then
		ethereal.grow_frost_tree(pos)

	elseif node.name == "ethereal:mushroom_sapling"
	and under == "ethereal:mushroom_dirt" then
		ethereal.grow_mushroom_tree(pos)

	elseif node.name == "ethereal:palm_sapling"
	and under == "default:sand" then
		ethereal.grow_palm_tree(pos)

	elseif node.name == "ethereal:willow_sapling"
	and under == "ethereal:gray_dirt" then
		ethereal.grow_willow_tree(pos)

	elseif node.name == "ethereal:redwood_sapling"
	and under == "default:dirt_with_dry_grass" then
		ethereal.grow_redwood_tree(pos)

	elseif node.name == "ethereal:orange_tree_sapling"
	and under == "ethereal:prairie_dirt" then
		ethereal.grow_orange_tree(pos)

	elseif node.name == "ethereal:bamboo_sprout"
	and under == "ethereal:bamboo_dirt" then
		ethereal.grow_bamboo_tree(pos)

	elseif node.name == "ethereal:birch_sapling"
	and under == "default:dirt_with_grass" then
		ethereal.grow_birch_tree(pos)
	end

end

-- Grow saplings
minetest.register_abm({
	label = "Ethereal grow sapling",
	nodenames = {"group:ethereal_sapling"},
	interval = 10,
	chance = 50,
	catch_up = false,
	action = function(pos, node)

		local light_level = minetest.get_node_light(pos)

		if not light_level or light_level < 13 then
			return
		end

		ethereal.grow_sapling(pos, node)
	end,
})
