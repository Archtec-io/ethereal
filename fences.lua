local S = ethereal.intllib

local door_mod = minetest.get_modpath("doors")

local add_fence = function(name, node, desc, texture)

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
			material = "ethereal:" .. node,
		})
	end
end

add_fence("frostwood", "frost_wood", "Frost", "ethereal_frost_wood")
add_fence("redwood", "redwood_wood", "Redwood", "ethereal_redwood_wood")
add_fence("yellowwood", "yellow_wood", "Healing Wood", "ethereal_yellow_wood")
