
local _ = {name = "air", prob = 0}
local l = {name = "ethereal:frost_leaves", prob = 255}
local t = {name = "ethereal:frost_tree", prob = 255}
local T = {name = "ethereal:frost_tree", prob = 255, force_place = true}

ethereal.frosttrees = {

	size = {x = 8, y = 19, z = 8},

	yslice_prob = {
		{ypos = 2, prob = 127}, -- trunk
		{ypos = 3, prob = 127},
		{ypos = 4, prob = 127},
		{ypos = 5, prob = 127},
		{ypos = 6, prob = 127},
		{ypos = 7, prob = 127},
		{ypos = 13, prob = 127}, -- leaves
		{ypos = 15, prob = 127}
	},

	data = {

	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,

	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,l,l,l,l,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,

	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,l,l,_,_,_,
	_,l,l,l,l,l,l,_,
	_,_,_,l,l,_,_,_,
	_,_,l,l,l,l,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,_,_,_,_,_,

	_,_,_,T,T,_,_,_,
	_,_,_,T,T,_,_,_,
	_,_,_,T,T,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,l,t,t,l,_,_,
	l,l,l,t,t,l,l,l,
	_,_,l,t,t,l,_,_,
	_,l,l,t,t,l,l,_,
	_,_,l,t,t,l,_,_,
	_,_,l,t,t,l,_,_,
	_,_,_,l,l,_,_,_,

	_,_,_,T,T,_,_,_,
	_,_,_,T,T,_,_,_,
	_,_,_,T,T,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,l,t,t,l,_,_,
	l,l,l,t,t,l,l,l,
	_,_,l,t,t,l,_,_,
	_,l,l,t,t,l,l,_,
	_,_,l,t,t,l,_,_,
	_,_,l,t,t,l,_,_,
	_,_,_,l,l,_,_,_,

	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,l,l,_,_,_,
	_,l,l,l,l,l,l,_,
	_,_,_,l,l,_,_,_,
	_,_,l,l,l,l,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,_,_,_,_,_,

	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,l,l,l,l,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,

	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,

	}
}

local T = {name = "ethereal:frost_tree", prob = 255}

ethereal.frosttrees_from_sapling = {

	size = {x = 8, y = 19, z = 8},

	yslice_prob = {
		{ypos = 2, prob = 127}, -- trunk
		{ypos = 3, prob = 127},
		{ypos = 4, prob = 127},
		{ypos = 5, prob = 127},
		{ypos = 6, prob = 127},
		{ypos = 7, prob = 127},
		{ypos = 13, prob = 127}, -- leaves
		{ypos = 15, prob = 127}
	},

	data = {

	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,

	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,l,l,l,l,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,

	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,l,l,_,_,_,
	_,l,l,l,l,l,l,_,
	_,_,_,l,l,_,_,_,
	_,_,l,l,l,l,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,_,_,_,_,_,

	_,_,_,T,T,_,_,_,
	_,_,_,T,T,_,_,_,
	_,_,_,T,T,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,l,t,t,l,_,_,
	l,l,l,t,t,l,l,l,
	_,_,l,t,t,l,_,_,
	_,l,l,t,t,l,l,_,
	_,_,l,t,t,l,_,_,
	_,_,l,t,t,l,_,_,
	_,_,_,l,l,_,_,_,

	_,_,_,T,T,_,_,_,
	_,_,_,T,T,_,_,_,
	_,_,_,T,T,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,_,t,t,_,_,_,
	_,_,l,t,t,l,_,_,
	l,l,l,t,t,l,l,l,
	_,_,l,t,t,l,_,_,
	_,l,l,t,t,l,l,_,
	_,_,l,t,t,l,_,_,
	_,_,l,t,t,l,_,_,
	_,_,_,l,l,_,_,_,

	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,l,l,_,_,_,
	_,l,l,l,l,l,l,_,
	_,_,_,l,l,_,_,_,
	_,_,l,l,l,l,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,_,_,_,_,_,

	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,l,l,l,l,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,

	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,l,l,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,
	_,_,_,_,_,_,_,_,

	}
}
