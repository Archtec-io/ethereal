local S = ethereal.intllib

-- Golden Apple (Found on Healing Tree, heals all 10 hearts)
minetest.register_node("ethereal:golden_apple", {
	description = S("Golden Apple"),
	drawtype = "plantlike",
	tiles = {"default_apple_gold.png"},
	inventory_image = "default_apple_gold.png",
	wield_image = "default_apple_gold.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.37, -0.2, 0.2, 0.31, 0.2}
	},
	groups = {
		fleshy = 3, dig_immediate = 3,
		leafdecay = 3,leafdecay_drop = 1
	},
	drop = "ethereal:golden_apple",
	on_use = function(itemstack, user, pointed_thing)
		if user then
			user:set_hp(20)
			return minetest.do_item_eat(2, nil, itemstack, user, pointed_thing)
		end
	end,
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name = "ethereal:golden_apple", param2 = 1})
		end
	end
})

-- Hearty Stew (Heals 5 hearts - thanks to ZonerDarkRevention for his DokuCraft DeviantArt bowl texture)
minetest.register_craftitem("ethereal:hearty_stew", {
	description = S("Hearty Stew"),
	inventory_image = "ethereal_hearty_stew.png",
	wield_image = "ethereal_hearty_stew.png",
	on_use = minetest.item_eat(10, "ethereal:bowl")
})

minetest.register_craft({
	output = "ethereal:hearty_stew",
	recipe = {
		{"group:food_onion","flowers:mushroom_brown", "group:food_tuber"},
		{"","flowers:mushroom_brown", ""},
		{"","group:food_bowl", ""}
	}
})

-- Extra recipe for hearty stew
if farming and farming.mod and farming.mod == "redo" then
minetest.register_craft({
	output = "ethereal:hearty_stew",
	recipe = {
		{"group:food_onion","flowers:mushroom_brown", "group:food_beans"},
		{"","flowers:mushroom_brown", ""},
		{"","group:food_bowl", ""}
	}
})
end
