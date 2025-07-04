
-- translation and mod check

local S = core.get_translator("ethereal")
local door_mod = core.get_modpath("doors")

-- fence registration helper (fence, rail, gate, mese post)

local function add_fence(name, node, desc, texture)

	if default.register_fence then

		default.register_fence("ethereal:fence_" .. name, {
			description = S(desc .. " Fence"),
			texture = texture .. ".png",
			material = "ethereal:" .. node,
			groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
			sounds = default.node_sound_wood_defaults(),
			check_for_pole = true
		})
	end

	if default.register_fence_rail then

		default.register_fence_rail("ethereal:fence_rail_" .. name, {
			description = S(desc .. " Fence Rail"),
			texture = texture .. ".png",
			material = "ethereal:" .. node,
			groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
			sounds = default.node_sound_wood_defaults()
		})
	end

	if door_mod and doors.register_fencegate then

		doors.register_fencegate("ethereal:fencegate_" .. name, {
			description = S(desc .. " Fence Gate"),
			texture = texture .. ".png",
			material = "ethereal:" .. node,
			groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
		})
	end

	if default.register_mesepost then

		default.register_mesepost("ethereal:mese_post_" .. name, {
			description = S(desc .. " Mese Post Light"),
			texture = texture .. ".png",
			material = "ethereal:" .. node
		})
	end
end

-- add wooden fences, gates and mese posts

add_fence("scorched", "scorched_tree", "Scorched", "ethereal_scorched_tree")
add_fence("frostwood", "frost_wood", "Frost", "ethereal_frost_wood")
add_fence("redwood", "redwood_wood", "Redwood", "ethereal_redwood_wood")
add_fence("willow", "willow_wood", "Willow", "ethereal_willow_wood")
add_fence("yellowwood", "yellow_wood", "Healing Wood", "ethereal_yellow_wood")
add_fence("palm", "palm_wood", "Palm", "moretrees_palm_wood")
add_fence("banana", "banana_wood", "Banana Wood", "ethereal_banana_wood")
add_fence("mushroom", "mushroom_trunk", "Mushroom", "ethereal_mushroom_trunk")
add_fence("birch", "birch_wood", "Birch", "moretrees_birch_wood")
add_fence("sakura", "sakura_wood", "Sakura", "ethereal_sakura_wood")
add_fence("olive", "olive_wood", "Olive", "ethereal_olive_wood")
add_fence("basandra", "basandra_wood", "Basandra", "ethereal_basandra_bush_wood")
add_fence("mangrove", "mangrove_wood", "Mangrove", "mcl_mangrove_planks")

-- add compatibility for previous ethereal gates

core.register_alias("ethereal:fencegate_wood_open", "doors:gate_wood_open")
core.register_alias("ethereal:fencegate_wood_closed", "doors:gate_wood_closed")
core.register_alias("ethereal:fencegate_acacia_open", "doors:gate_acacia_wood_open")
core.register_alias("ethereal:fencegate_acacia_closed", "doors:gate_acacia_wood_closed")
core.register_alias("ethereal:fencegate_junglewood_open", "doors:gate_junglewood_open")
core.register_alias("ethereal:fencegate_junglewood_closed", "doors:gate_junglewood_closed")
core.register_alias("ethereal:fencegate_pine_open", "doors:gate_pine_wood_open")
core.register_alias("ethereal:fencegate_pine_closed", "doors:gate_pine_wood_closed")

-- sakura door

if door_mod then

	doors.register("ethereal:door_sakura", {
		tiles = {
			{name = "ethereal_sakura_door.png", backface_culling = true}
		},
		description = S("Sakura Wood Door"),
		inventory_image = "ethereal_sakura_door_inv.png",
		groups = {snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		sound_open = "doors_glass_door_open",
		sound_close = "doors_glass_door_close",
		recipe = {
			{"group:stick", "default:paper"},
			{"default:paper", "group:stick"},
			{"ethereal:sakura_wood", "ethereal:sakura_wood"}
		}
	})

	core.register_alias("ethereal:sakura_door", "ethereal:door_sakura")
	core.register_alias("ethereal:sakura_door_a", "ethereal:door_sakura_a")
	core.register_alias("ethereal:sakura_door_b", "ethereal:door_sakura_b")

	doors.register("ethereal:door_mangrove", {
		tiles = {
			{name = "mcl_mangrove_door.png", backface_culling = true}
		},
		description = S("Mangrove Wood Door"),
		inventory_image = "mcl_mangrove_door_inv.png",
		groups = {snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		sound_open = "doors_glass_door_open",
		sound_close = "doors_glass_door_close",
		recipe = {
			{"ethereal:mangrove_wood", "ethereal:mangrove_wood"},
			{"ethereal:mangrove_wood", "ethereal:mangrove_wood"},
			{"ethereal:mangrove_wood", "ethereal:mangrove_wood"}
		}
	})

	doors.register_trapdoor("ethereal:mangrove_trapdoor", {
		description = S("Mangrove Wood Trapdoor"),
		inventory_image = "mcl_mangrove_trapdoor.png",
		wield_image = "mcl_mangrove_trapdoor.png",
		tile_front = "mcl_mangrove_trapdoor.png",
		tile_side = "mcl_mangrove_trapdoor_side.png",
		gain_open = 0.06,
		gain_close = 0.13,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, door = 1}
	})

	core.register_craft({
		output = "ethereal:mangrove_trapdoor 2",
		recipe = {
			{"ethereal:mangrove_wood", "ethereal:mangrove_wood", "ethereal:mangrove_wood"},
			{"ethereal:mangrove_wood", "ethereal:mangrove_wood", "ethereal:mangrove_wood"},
			{"", "", ""}
		}
	})
end
