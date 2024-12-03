
local _ = {name = "air", param1 = 0}
local ds = {name = "default:desert_stone", param1 = 255, param2 = 0}
local s0 = {name = "stairs:stair_outer_desert_stone", param1 = 255, param2 = 0}
local s2 = {name = "stairs:stair_outer_desert_stone", param1 = 255, param2 = 2}
local s3 = {name = "stairs:stair_outer_desert_stone", param1 = 255, param2 = 3}
local et = {name = "ethereal:etherium_ore", param1 = 128}

ethereal.desertstone_spike = {

	size = {x = 2, y = 3, z = 2},

	yslice_prob = {
		{ypos = 2, prob = 127}
	},

	data = {

	et, ds,
	ds, s0,
	s3, _,

	ds, ds,
	s2,s3,
	_,_,

	}
}
