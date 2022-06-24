local S = ethereal.intllib

-- Crystal Shrub (not Flammable - too cold to burn)
minetest.register_node("ethereal:crystalgrass", {
	description = S("Crystal Grass"),
	drawtype = "plantlike",
	visual_scale = 0.9,
	tiles = {"ethereal_crystalgrass.png"},
	inventory_image = "ethereal_crystalgrass.png",
	wield_image = "ethereal_crystalgrass.png",
	paramtype = "light",
	sunlight_propagates = true,
	waving = 1,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-5 / 16, -0.5, -5 / 16, 5 / 16, 5 / 16, 5 / 16}
	}
})

-- Define Moss Types (Has grass textures on all sides)
local add_moss = function(typ, descr, texture, receipe_item)

	minetest.register_node("ethereal:" .. typ .. "_moss", {
		description = S(descr .. " Moss"),
		tiles = {texture},
		groups = {crumbly = 3},
		sounds = default.node_sound_dirt_defaults({
			footstep = {name = "default_grass_footstep", gain = 0.4}})
	})

	minetest.register_craft({
		type = "shapeless",
		output = "ethereal:" .. typ .. "_moss",
		recipe = {"default:dirt", receipe_item}
	})
end

add_moss( "crystal", "Crystal", "ethereal_grass_crystal_top.png", "ethereal:frost_leaves")
