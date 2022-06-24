-- helper string
local tmp

-- helper function
local add_node = function(a, b, c, d, e, f, g, h, i, j)

	if j ~= 1 then return end

	minetest.register_decoration({
		deco_type = "simple",
		place_on = a,
		sidelen = 80,
		fill_ratio = b,
		biomes = c,
		y_min = d,
		y_max = e,
		decoration = f,
		height_max = g,
		spawn_by = h,
		num_spawn_by = i
	})
end

-- crystal spike & crystal grass
add_node({"ethereal:crystal_dirt"}, 0.02, {"frost", "frost_floatland"}, 1, 1750,
	{"ethereal:crystal_spike", "ethereal:crystalgrass"}, nil, nil, nil,
	ethereal.frost)

add_node({"ethereal:bamboo_dirt"}, 0.35, {"bamboo"}, 1, 100,
	{"default:grass_2", "default:grass_3", "default:grass_4",
	"default:grass_5"}, nil, nil, nil, ethereal.bamboo)
