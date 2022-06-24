local S = ethereal.intllib

minetest.register_alias("ethereal:green_dirt", "default:dirt_with_grass")

local dirts = {
	"Bamboo", "Crystal"
}

for n = 1, #dirts do

	local desc = dirts[n]
	local name = desc:lower()

	minetest.register_node("ethereal:"..name.."_dirt", {
		description = S(desc.." Dirt"),
		tiles = {
			"ethereal_grass_"..name.."_top.png",
			"default_dirt.png",
			{
				name = "default_dirt.png^ethereal_grass_"
				.. name .."_side.png",
				tileable_vertical = false
			}
		},
		is_ground_content = ethereal.cavedirt,
		groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
		soil = {
			base = "ethereal:"..name.."_dirt",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "default:dirt",
		sounds = default.node_sound_dirt_defaults({
			footstep = {name = "default_grass_footstep", gain = 0.25},
		}),
	})
end

-- flower spread, also crystal and fire flower regeneration
local flower_spread = function(pos, node)

	if (minetest.get_node_light(pos) or 0) < 13 then
		return
	end

	local pos0 = {x = pos.x - 4, y = pos.y - 2, z = pos.z - 4}
	local pos1 = {x = pos.x + 4, y = pos.y + 2, z = pos.z + 4}

	local num = #minetest.find_nodes_in_area(pos0, pos1, "group:flora")

	-- stop flowers spreading too much just below top of map block
	if minetest.find_node_near(pos, 2, "ignore") then
		return
	end

	if num > 3 and node.name == "ethereal:crystalgrass" then

		local grass = minetest.find_nodes_in_area_under_air(
			pos0, pos1, {"ethereal:crystalgrass"})

		if #grass > 4
		and not minetest.find_node_near(pos, 4, {"ethereal:crystal_spike"}) then

			pos = grass[math.random(#grass)]

			pos.y = pos.y - 1

			if minetest.get_node(pos).name == "ethereal:crystal_dirt" then

				pos.y = pos.y + 1

				minetest.swap_node(pos, {name = "ethereal:crystal_spike"})
			end
		end

		return

	elseif num > 3 and node.name == "ethereal:dry_shrub" then

		local grass = minetest.find_nodes_in_area_under_air(
			pos0, pos1, {"ethereal:dry_shrub"})

		if #grass > 8
		and not minetest.find_node_near(pos, 4, {"ethereal:fire_flower"}) then

			pos = grass[math.random(#grass)]

			pos.y = pos.y - 1

			if minetest.get_node(pos).name == "ethereal:fiery_dirt" then

				pos.y = pos.y + 1

				minetest.swap_node(pos, {name = "ethereal:fire_flower"})
			end
		end

		return

	elseif num > 3 then
		return
	end

	pos.y = pos.y - 1

	local under = minetest.get_node(pos)

	-- make sure we have soil underneath
	if minetest.get_item_group(under.name, "soil") == 0
	or under.name == "default:desert_sand" then
		return
	end

	local seedling = minetest.find_nodes_in_area_under_air(
			pos0, pos1, {under.name})

	if #seedling > 0 then

		pos = seedling[math.random(#seedling)]

		pos.y = pos.y + 1

		if (minetest.get_node_light(pos) or 0) < 13 then
			return
		end

		minetest.swap_node(pos, {name = node.name})
	end
end

-- grow papyrus up to 4 high and bamboo up to 8 high
local grow_papyrus = function(pos, node)

	local oripos = pos.y
	local high = 4

	pos.y = pos.y - 1

	local nod = minetest.get_node_or_nil(pos)

	if not nod
	or minetest.get_item_group(nod.name, "soil") < 1
	or minetest.find_node_near(pos, 3, {"group:water"}) == nil then
		return
	end

	if node.name == "ethereal:bamboo" then
		high = 8
	end

	pos.y = pos.y + 1

	local height = 0

	while height < high
	and minetest.get_node(pos).name == node.name do
		height = height + 1
		pos.y = pos.y + 1
	end

	nod = minetest.get_node_or_nil(pos)

	if nod
	and nod.name == "air"
	and height < high then

		if node.name == "ethereal:bamboo"
		and height == (high - 1) then

			ethereal.grow_bamboo_tree({x = pos.x, y = oripos, z = pos.z})
		else
			minetest.swap_node(pos, {name = node.name})
		end
	end

end

-- loop through active abm's
for _, ab in pairs(minetest.registered_abms) do

	local label = ab.label or ""
	local node1 = ab.nodenames and ab.nodenames[1] or ""
	local node2 = ab.nodenames and ab.nodenames[2] or ""
	local neigh = ab.neighbors and ab.neighbors[1] or ""

	if label == "Flower spread"
	or node1 == "group:flora" then

		--ab.interval = 1
		ab.chance = 96 -- back to original chance from 300
		ab.nodenames = {"group:flora"}
		ab.neighbors = {"group:soil"}
		ab.action = flower_spread

	-- find grow papyrus abm and change to grow_papyrus function
	elseif label == "Grow papyrus"
	or node1 == "default:papyrus" then

		--ab.interval = 2
		--ab.chance = 1
		ab.nodenames = {"default:papyrus", "ethereal:bamboo"}
		ab.neighbors = {"group:soil"}
		ab.action = grow_papyrus

	elseif label == "Mushroom spread" then

		--ab.interval = 1
		ab.chance = 50 -- back to original chance from 150
		ab.nodenames = {"group:mushroom"}
	end
end
