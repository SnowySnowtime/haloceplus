local light_table = {
	L_HeadLampPos = Vector(102.5,15.239,53),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(102.5,-15.239,53),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-95.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-95.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(92.815,7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(92.815,-7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(27.428,16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,-16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,11.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,-11.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-93.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
{pos =Vector(-93.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-93.399,22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-93.399,-22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-93.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(-93.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	ems_sounds = {"hcesire","hcesire2","hcesire3"},
	ems_sprites = {
		{
			pos = Vector(24.82,-1.28,56.81),
			material = "sprites/glow04_noz",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "warthogce", light_table)

local light_table = {
	L_HeadLampPos = Vector(102.5,15.239,53),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(102.5,-15.239,53),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-95.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-95.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(92.815,24,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(92.815,-24,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(27.428,34.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,-34.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,29.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,-29.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-93.399,40.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
{pos =Vector(-93.399,-40.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-93.399,40.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-93.399,-40.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-93.399,40.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(-93.399,-40.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	ems_sounds = {"hcesire"},
	ems_sprites = {
		{
			pos = Vector(24.82,20.28,56.81),
			material = "sprites/glow04_noz",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "widehog", light_table)

local light_table = {
	L_HeadLampPos = Vector(102.5,15.239,53),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(102.5,-15.239,53),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-95.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-95.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(82.815,7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(82.815,-7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(27.428,16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,-16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,11.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,-11.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-61.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
{pos =Vector(-61.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-61.399,22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-61.399,-22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-61.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(-61.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	ems_sounds = {"bestdo"},
	ems_sprites = {
		{
			pos = Vector(24.82,-1.28,56.81),
			material = "sprites/glow04_noz",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "shorthog", light_table)

local light_table = {
	L_HeadLampPos = Vector(100000.5,15.239,53),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(100000.5,-15.239,53),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-20.38,17.91,51.29),
	L_RearLampAng = Angle(0,0,0),

	R_RearLampPos = Vector(-95.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(-21,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
{pos =Vector(-21,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(-93.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
{pos =Vector(-93.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-93.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
{pos =Vector(-93.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-93.399,22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-93.399,-22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-93.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(-93.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	ems_sounds = {"hcesire"},
	ems_sprites = {
		{
			pos = Vector(24.82,-1.28,56.81),
			material = "sprites/glow04_noz",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "wartwart", light_table)

local light_table = {
	L_HeadLampPos = Vector(40.5,15.239,35),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(40.5,-15.239,35),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-45.38,17.91,32.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-45.38,-17.91,32.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(41.948,3.256,41.222),material = "sprites/glow04_noz",size = 10, color = Color(255,255,255,225)},
{pos =Vector(41.948,-3.256,41.222),material = "sprites/glow04_noz",size = 10, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(-120000.428,16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-42.316,9.951,44.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-42.316,-9.951,44.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-42.316,13.951,44.513),material = "sprites/glow04_noz",size = 5, color = Color(255,68,0,225)},
{pos =Vector(-42.316,-13.951,44.513),material = "sprites/glow04_noz",size = 5, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-42.316,13.951,44.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-42.316,-13.951,44.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	ems_sounds = {"bestdo"},
	ems_sprites = {
		{
			pos = Vector(9.82,-1.28,45.81),
			material = "sprites/glow04_noz",
			size = 5,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "minihog", light_table)

local light_table = {
	L_HeadLampPos = Vector(102.5,15.239,53),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(102.5,-15.239,53),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-407.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-407.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(92.815,7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(92.815,-7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(27.428,16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,-16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,11.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,-11.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-405.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
{pos =Vector(-405.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-405.399,22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-405.399,-22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-405.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(-405.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	ems_sounds = {"cuntroad"},
	ems_sprites = {
		{
			pos = Vector(24.82,-1.28,56.81),
			material = "sprites/glow04_noz",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "longhog", light_table)

local light_table = {
	L_HeadLampPos = Vector(102.5,15.239,53),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(102.5,-15.239,53),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-407.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-407.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(92.815,7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(92.815,-7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(27.428,16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,-16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,11.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(27.428,-11.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-145.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
{pos =Vector(-145.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-145.399,22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-145.399,-22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-145.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(-145.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	ems_sounds = {"cuntroad"},
	ems_sprites = {
		{
			pos = Vector(24.82,-1.28,56.81),
			material = "sprites/glow04_noz",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "sedanhogg", light_table)

local light_table = {
	L_HeadLampPos = Vector(102.5,15.239,53),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(102.5,-15.239,53),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-95.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-95.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(371.26,26.816,179.04),material = "sprites/glow04_noz",size = 80, color = Color(255,255,255,225)},
{pos =Vector(371.26,-26.816,179.04),material = "sprites/glow04_noz",size = 80, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(109.712,79.516,294.592),material = "sprites/glow04_noz",size = 120, color = Color(255,255,255,225)},
{pos =Vector(109.712,79.516,294.592),material = "sprites/glow04_noz",size = 120, color = Color(255,255,255,225)},
{pos =Vector(109.712,47.516,294.592),material = "sprites/glow04_noz",size = 120, color = Color(255,255,255,225)},
{pos =Vector(109.712,-47.516,294.592),material = "sprites/glow04_noz",size = 120, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-373.596,88.208,206.412),material = "sprites/glow04_noz",size = 80, color = Color(255,0,0,225)},
{pos =Vector(-373.596,-88.208,206.412),material = "sprites/glow04_noz",size = 80, color = Color(255,0,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-373.596,88.208,206.412),material = "sprites/glow04_noz",size = 50, color = Color(255,68,0,225)},
{pos =Vector(-373.596,-88.208,206.412),material = "sprites/glow04_noz",size = 50, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-373.596,88.208,206.412),material = "sprites/glow04_noz",size = 80, color = Color(255,255,255,225)},
{pos =Vector(-373.596,-88.208,206.412),material = "sprites/glow04_noz",size = 80, color = Color(255,255,255,225)},
	},
	ems_sounds = {"megahorn"},
	ems_sprites = {
		{
			pos = Vector(24.82,-1.28,56.81),
			material = "sprites/glow04_noz",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "megahog", light_table)

local light_table = {
	L_HeadLampPos = Vector(102.5,15.239,53),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(102.5,-15.239,53),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-95.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-95.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(103.2,7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(103.2,-7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(29.428,18.879,85.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(29.428,-18.879,85.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(29.428,16.879,85.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(29.428,-16.879,85.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-110.399,25.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,0,0,225)},
{pos =Vector(-110.399,-25.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,0,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-110.399,25.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,72,0,225)},
{pos =Vector(-110.399,-25.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,72,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-110.399,25.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,255,255,225)},
{pos =Vector(-110.399,-25.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,255,255,225)},
	},
	ems_sounds = {"h3sire","h3sire2"},
	ems_sprites = {
		{
			pos = Vector(24.82,-1.28,56.81),
			material = "sprites/glow04_noz",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "warthog3", light_table)

local light_table = {
	L_HeadLampPos = Vector(102.5,15.239,53),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(102.5,-15.239,53),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-95.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-95.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(109.2,7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(109.2,-7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(25.428,16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(25.428,-16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(25.428,11.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(25.428,-11.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-96.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
{pos =Vector(-96.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-96.399,22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-96.399,-22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-96.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(-96.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	ems_sounds = {"hcesire"},
	ems_sprites = {
		{
			pos = Vector(24.82,-1.28,56.81),
			material = "sprites/glow04_noz",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "warthog3_troop", light_table)

local light_table = {
	L_HeadLampPos = Vector(102.5,15.239,53),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(102.5,-15.239,53),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-95.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-95.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(87.815,7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(87.815,-7.73,51.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(22.428,16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(22.428,-16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(22.428,11.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
{pos =Vector(22.428,-11.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-96.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
{pos =Vector(-96.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,0,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-96.399,22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-96.399,-22.052,51.603),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-96.399,22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(-96.399,-22.052,51.603),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	}
}
list.Set( "simfphys_lights", "warthogreach", light_table)

local light_table = {
	L_HeadLampPos = Vector(40.5,15.239,35),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(40.5,-15.239,35),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-45.38,17.91,32.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-45.38,-17.91,32.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(39.648,10.256,34.822),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(39.648,-10.256,34.822),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(-120000.428,16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-44.316,13.951,31.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
{pos =Vector(-44.316,-13.951,31.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-44.316,13.951,31.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-44.316,-13.951,31.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-44.316,13.951,31.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
{pos =Vector(-44.316,-13.951,31.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
	}
}
list.Set( "simfphys_lights", "mongoose3", light_table)

local light_table = {
	L_HeadLampPos = Vector(40.5,15.239,35),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(40.5,-15.239,35),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-50.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-50.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(39.648,10.256,34.822),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(39.648,-10.256,34.822),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(-120000.428,16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-49.316,13.951,33.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
{pos =Vector(-49.316,-13.951,33.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-49.316,13.951,33.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-49.316,-13.951,33.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-49.316,13.951,33.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
{pos =Vector(-49.316,-13.951,33.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
	}
}
list.Set( "simfphys_lights", "mongoosehr", light_table)

local light_table = {
	L_HeadLampPos = Vector(18.129,-102.475,38.88),
	L_HeadLampAng = Angle(0,-90,0),

	R_HeadLampPos = Vector(-18.129,-102.475,38.88),
	R_HeadLampAng = Angle(0,-90,0),

	L_RearLampPos = Vector(24.286,104.762,46.523),
	L_RearLampAng = Angle(0,90,0),

	R_RearLampPos = Vector(-24.286,104.762,46.523),
	R_RearLampAng = Angle(0,90,0),
	
	Headlight_sprites = { 
{pos =Vector(18.129,-102.475,38.88),material = "snowysnowtime/sprites/warthog_light",size = 35, color = Color(255,255,255,225)},
{pos =Vector(-18.129,-102.475,38.88),material = "snowysnowtime/sprites/warthog_light",size = 35, color = Color(255,255,255,225)},
{pos =Vector(15.264,-28.198,71.39),material = "snowysnowtime/sprites/warthog_light",size = 40, color = Color(255,255,255,225)},
{pos =Vector(-15.264,-28.198,71.39),material = "snowysnowtime/sprites/warthog_light",size = 40, color = Color(255,255,255,225)},
{pos =Vector(15.26,-38,71.4),material = "snowysnowtime/sprites/light_volume",size = 14, color = Color(255,255,255,50)},
{pos =Vector(15.26,-41,71.4),material = "snowysnowtime/sprites/light_volume",size = 15.5, color = Color(255,255,255,50)},
{pos =Vector(15.26,-44,71.4),material = "snowysnowtime/sprites/light_volume",size = 16, color = Color(255,255,255,50)},
{pos =Vector(15.26,-47,71.4),material = "snowysnowtime/sprites/light_volume",size = 17.5, color = Color(255,255,255,50)},
{pos =Vector(15.26,-50,71.4),material = "snowysnowtime/sprites/light_volume",size = 18, color = Color(255,255,255,50)},
{pos =Vector(15.26,-53,71.4),material = "snowysnowtime/sprites/light_volume",size = 19.5, color = Color(255,255,255,50)},
{pos =Vector(15.26,-57,71.4),material = "snowysnowtime/sprites/light_volume",size = 20, color = Color(255,255,255,50)},
{pos =Vector(15.26,-61,71.4),material = "snowysnowtime/sprites/light_volume",size = 21.5, color = Color(255,255,255,50)},
{pos =Vector(15.26,-65,71.4),material = "snowysnowtime/sprites/light_volume",size = 22, color = Color(255,255,255,50)},
{pos =Vector(15.26,-69,71.4),material = "snowysnowtime/sprites/light_volume",size = 23.5, color = Color(255,255,255,50)},
{pos =Vector(15.26,-73,71.4),material = "snowysnowtime/sprites/light_volume",size = 25, color = Color(255,255,255,30)},
{pos =Vector(15.26,-77,71.4),material = "snowysnowtime/sprites/light_volume",size = 27, color = Color(255,255,255,10)},
{pos =Vector(-15.26,-38,71.4),material = "snowysnowtime/sprites/light_volume",size = 14, color = Color(255,255,255,50)},
{pos =Vector(-15.26,-41,71.4),material = "snowysnowtime/sprites/light_volume",size = 15.5, color = Color(255,255,255,50)},
{pos =Vector(-15.26,-44,71.4),material = "snowysnowtime/sprites/light_volume",size = 16, color = Color(255,255,255,50)},
{pos =Vector(-15.26,-47,71.4),material = "snowysnowtime/sprites/light_volume",size = 17.5, color = Color(255,255,255,50)},
{pos =Vector(-15.26,-50,71.4),material = "snowysnowtime/sprites/light_volume",size = 18, color = Color(255,255,255,50)},
{pos =Vector(-15.26,-53,71.4),material = "snowysnowtime/sprites/light_volume",size = 19.5, color = Color(255,255,255,50)},
{pos =Vector(-15.26,-57,71.4),material = "snowysnowtime/sprites/light_volume",size = 20, color = Color(255,255,255,50)},
{pos =Vector(-15.26,-61,71.4),material = "snowysnowtime/sprites/light_volume",size = 21.5, color = Color(255,255,255,50)},
{pos =Vector(-15.26,-65,71.4),material = "snowysnowtime/sprites/light_volume",size = 22, color = Color(255,255,255,50)},
{pos =Vector(-15.26,-69,71.4),material = "snowysnowtime/sprites/light_volume",size = 23.5, color = Color(255,255,255,50)},
{pos =Vector(-15.26,-73,71.4),material = "snowysnowtime/sprites/light_volume",size = 25, color = Color(255,255,255,30)},
{pos =Vector(-15.26,-77,71.4),material = "snowysnowtime/sprites/light_volume",size = 27, color = Color(255,255,255,10)},
	},
	Headlamp_sprites = { 
{pos =Vector(15.26,-38,71.4),material = "snowysnowtime/sprites/light_volume",size = 14, color = Color(255,255,255,100)},
{pos =Vector(15.26,-41,71.4),material = "snowysnowtime/sprites/light_volume",size = 15.5, color = Color(255,255,255,100)},
{pos =Vector(15.26,-44,71.4),material = "snowysnowtime/sprites/light_volume",size = 16, color = Color(255,255,255,100)},
{pos =Vector(15.26,-47,71.4),material = "snowysnowtime/sprites/light_volume",size = 17.5, color = Color(255,255,255,100)},
{pos =Vector(15.26,-50,71.4),material = "snowysnowtime/sprites/light_volume",size = 18, color = Color(255,255,255,100)},
{pos =Vector(15.26,-53,71.4),material = "snowysnowtime/sprites/light_volume",size = 19.5, color = Color(255,255,255,100)},
{pos =Vector(15.26,-57,71.4),material = "snowysnowtime/sprites/light_volume",size = 20, color = Color(255,255,255,100)},
{pos =Vector(15.26,-61,71.4),material = "snowysnowtime/sprites/light_volume",size = 21.5, color = Color(255,255,255,100)},
{pos =Vector(15.26,-65,71.4),material = "snowysnowtime/sprites/light_volume",size = 22, color = Color(255,255,255,100)},
{pos =Vector(15.26,-69,71.4),material = "snowysnowtime/sprites/light_volume",size = 23.5, color = Color(255,255,255,100)},
{pos =Vector(15.26,-73,71.4),material = "snowysnowtime/sprites/light_volume",size = 25, color = Color(255,255,255,30)},
{pos =Vector(-15.26,-77,71.4),material = "snowysnowtime/sprites/light_volume",size = 27, color = Color(255,255,255,10)},
{pos =Vector(-15.26,-38,71.4),material = "snowysnowtime/sprites/light_volume",size = 14, color = Color(255,255,255,100)},
{pos =Vector(-15.26,-41,71.4),material = "snowysnowtime/sprites/light_volume",size = 15.5, color = Color(255,255,255,100)},
{pos =Vector(-15.26,-44,71.4),material = "snowysnowtime/sprites/light_volume",size = 16, color = Color(255,255,255,100)},
{pos =Vector(-15.26,-47,71.4),material = "snowysnowtime/sprites/light_volume",size = 17.5, color = Color(255,255,255,100)},
{pos =Vector(-15.26,-50,71.4),material = "snowysnowtime/sprites/light_volume",size = 18, color = Color(255,255,255,100)},
{pos =Vector(-15.26,-53,71.4),material = "snowysnowtime/sprites/light_volume",size = 19.5, color = Color(255,255,255,100)},
{pos =Vector(-15.26,-57,71.4),material = "snowysnowtime/sprites/light_volume",size = 20, color = Color(255,255,255,100)},
{pos =Vector(-15.26,-61,71.4),material = "snowysnowtime/sprites/light_volume",size = 21.5, color = Color(255,255,255,100)},
{pos =Vector(-15.26,-65,71.4),material = "snowysnowtime/sprites/light_volume",size = 22, color = Color(255,255,255,100)},
{pos =Vector(-15.26,-69,71.4),material = "snowysnowtime/sprites/light_volume",size = 23.5, color = Color(255,255,255,100)},
{pos =Vector(-15.26,-73,71.4),material = "snowysnowtime/sprites/light_volume",size = 25, color = Color(255,255,255,30)},
{pos =Vector(-15.26,-77,71.4),material = "snowysnowtime/sprites/light_volume",size = 27, color = Color(255,255,255,10)},
	},
	Rearlight_sprites = {
{pos =Vector(-24.286,104.762,46.523),material = "snowysnowtime/sprites/brake",size = 35, color = Color(255,0,0,225)},
{pos =Vector(-24.286,104.762,46.523),material = "snowysnowtime/sprites/warthog_light",size = 25, color = Color(255,255,255,255)},
{pos =Vector(24.286,104.762,46.523),material = "snowysnowtime/sprites/brake",size = 35, color = Color(255,0,0,225)},
{pos =Vector(24.286,104.762,46.523),material = "snowysnowtime/sprites/warthog_light",size = 25, color = Color(255,255,255,255)},
	},
	Brakelight_sprites = {
{pos =Vector(-24.286,104.762,46.523),material = "snowysnowtime/sprites/brake",size = 35, color = Color(255,100,0,225)},
{pos =Vector(-24.286,104.762,46.523),material = "snowysnowtime/sprites/warthog_light",size = 25, color = Color(255,255,255,255)},
{pos =Vector(24.286,104.762,46.523),material = "snowysnowtime/sprites/brake",size = 35, color = Color(255,100,0,225)},
{pos =Vector(24.286,104.762,46.523),material = "snowysnowtime/sprites/warthog_light",size = 25, color = Color(255,255,255,255)},
	},
	Reverselight_sprites = {
{pos =Vector(-24.286,104.762,46.523),material = "snowysnowtime/sprites/warthog_light",size = 35, color = Color(255,255,255,225)},
{pos =Vector(24.286,104.762,46.523),material = "snowysnowtime/sprites/warthog_light",size = 35, color = Color(255,255,255,225)},
	},
	ems_sounds = {"hcesire"},
	ems_sprites = {
		{
			pos = Vector(2.207,-24.403,50),
			material = "snowysnowtime/sprites/warthog_light",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "warthogspv3", light_table)

local light_table = {
	L_HeadLampPos = Vector(40.5,15.239,35),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(40.5,-15.239,35),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-45.38,17.91,32.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-45.38,-17.91,32.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(39.648,10.256,34.822),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(39.648,-10.256,34.822),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(-120000.428,16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-44.316,13.951,31.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
{pos =Vector(-44.316,-13.951,31.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-44.316,13.951,31.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-44.316,-13.951,31.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-44.316,13.951,31.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
{pos =Vector(-44.316,-13.951,31.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
	}
}
list.Set( "simfphys_lights", "mongoose3", light_table)

local light_table = {
	L_HeadLampPos = Vector(40.5,15.239,35),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(40.5,-15.239,35),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-50.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-50.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(39.648,10.256,34.822),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(39.648,-10.256,34.822),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(-120000.428,16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-49.316,13.951,33.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
{pos =Vector(-49.316,-13.951,33.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-49.316,13.951,33.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-49.316,-13.951,33.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-49.316,13.951,33.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
{pos =Vector(-49.316,-13.951,33.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
	}
}
list.Set( "simfphys_lights", "mongoosehr", light_table)

local light_table = {
	L_HeadLampPos = Vector(0,43,99),
	L_HeadLampAng = Angle(0,-90,0),

	L_HeadLampPos = Vector(0,43,99),
	L_HeadLampAng = Angle(0,-90,0),
	
	Headlight_sprites = { 
{pos =Vector(0,42,99),material = "snowysnowtime/sprites/warthog_light",size = 40, color = Color(200,200,255,225)},
{pos =Vector(0,39,99),material = "snowysnowtime/sprites/light_volume",size = 14, color = Color(200,200,255,50)},
{pos =Vector(0,36,99),material = "snowysnowtime/sprites/light_volume",size = 15.5, color = Color(200,200,255,50)},
{pos =Vector(0,33,99),material = "snowysnowtime/sprites/light_volume",size = 16, color = Color(200,200,255,50)},
{pos =Vector(0,30,99),material = "snowysnowtime/sprites/light_volume",size = 17.5, color = Color(200,200,255,50)},
{pos =Vector(0,27,99),material = "snowysnowtime/sprites/light_volume",size = 18, color = Color(200,200,255,50)},
{pos =Vector(0,24,99),material = "snowysnowtime/sprites/light_volume",size = 19.5, color = Color(200,200,255,50)},
{pos =Vector(0,20,99),material = "snowysnowtime/sprites/light_volume",size = 20, color = Color(200,200,255,50)},
{pos =Vector(0,16,99),material = "snowysnowtime/sprites/light_volume",size = 21.5, color = Color(200,200,255,50)},
{pos =Vector(0,12,99),material = "snowysnowtime/sprites/light_volume",size = 22, color = Color(200,200,255,50)},
{pos =Vector(0,8,99),material = "snowysnowtime/sprites/light_volume",size = 23.5, color = Color(200,200,255,50)},
{pos =Vector(0,4,99),material = "snowysnowtime/sprites/light_volume",size = 25, color = Color(200,200,255,30)},
{pos =Vector(0,0,99),material = "snowysnowtime/sprites/light_volume",size = 27, color = Color(200,200,255,10)},
	},
	ems_sounds = {"hcesire_cov"},
	ems_sprites = {
		{
			pos = Vector(2.207,-24.403,50),
			material = "snowysnowtime/sprites/warthog_light",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "warthogh2aspectre", light_table)

local light_table = {
	L_HeadLampPos = Vector(40.5,15.239,35),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(40.5,-15.239,35),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-50.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-50.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(39.648,10.256,34.822),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(39.648,-10.256,34.822),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(-120000.428,16.879,73.648),material = "sprites/glow04_noz",size = 30, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-49.316,13.951,33.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
{pos =Vector(-49.316,-13.951,33.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-49.316,13.951,33.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
{pos =Vector(-49.316,-13.951,33.513),material = "sprites/glow04_noz",size = 10, color = Color(255,68,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-49.316,13.951,33.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
{pos =Vector(-49.316,-13.951,33.513),material = "sprites/glow04_noz",size = 20, color = Color(255,68,0,225)},
	}
}
list.Set( "simfphys_lights", "mongoosehr", light_table)

local light_table = {
	L_HeadLampPos = Vector(213,0,53),
	L_HeadLampAng = Angle(0,0,0),
	
	R_HeadLampPos = Vector(-100,0,60),
	R_HeadLampAng = Angle(0,0,60),

	Headlight_sprites = { 
{pos =Vector(0,42,99),material = "snowysnowtime/sprites/warthog_light",size = 40, color = Color(200,200,255,225)},
{pos =Vector(0,39,99),material = "snowysnowtime/sprites/light_volume",size = 14, color = Color(200,200,255,50)},
{pos =Vector(0,36,99),material = "snowysnowtime/sprites/light_volume",size = 15.5, color = Color(200,200,255,50)},
{pos =Vector(0,33,99),material = "snowysnowtime/sprites/light_volume",size = 16, color = Color(200,200,255,50)},
{pos =Vector(0,30,99),material = "snowysnowtime/sprites/light_volume",size = 17.5, color = Color(200,200,255,50)},
{pos =Vector(0,27,99),material = "snowysnowtime/sprites/light_volume",size = 18, color = Color(200,200,255,50)},
{pos =Vector(0,24,99),material = "snowysnowtime/sprites/light_volume",size = 19.5, color = Color(200,200,255,50)},
{pos =Vector(0,20,99),material = "snowysnowtime/sprites/light_volume",size = 20, color = Color(200,200,255,50)},
{pos =Vector(0,16,99),material = "snowysnowtime/sprites/light_volume",size = 21.5, color = Color(200,200,255,50)},
{pos =Vector(0,12,99),material = "snowysnowtime/sprites/light_volume",size = 22, color = Color(200,200,255,50)},
{pos =Vector(0,8,99),material = "snowysnowtime/sprites/light_volume",size = 23.5, color = Color(200,200,255,50)},
{pos =Vector(0,4,99),material = "snowysnowtime/sprites/light_volume",size = 25, color = Color(200,200,255,30)},
{pos =Vector(0,0,99),material = "snowysnowtime/sprites/light_volume",size = 27, color = Color(200,200,255,10)},
	},
	ems_sounds = {"hcesire_cov_h2"},
	ems_sprites = {
		{
			pos = Vector(2.207,-24.403,50),
			material = "snowysnowtime/sprites/warthog_light",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "warthogh2ashadow", light_table)

local light_table = {
	L_HeadLampPos = Vector(102.5,15.239,53),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(102.5,-15.239,53),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-95.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-95.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(97.2,8,49.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(97.2,2,49.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(97.2,8,49.55),material = "snowysnowtime/sprites/light_volume",size = 0, color = Color(255,255,255,225)},
{pos =Vector(97.2,2,49.55),material = "snowysnowtime/sprites/light_volume",size = 0, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-102.399,30.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,0,0,225)},
{pos =Vector(-102.399,-30.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,0,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-102.399,30.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,72,0,225)},
{pos =Vector(-102.399,-30.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,72,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-102.399,33.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,255,255,225)},
{pos =Vector(-102.399,-33.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,255,255,225)},
	},
	ems_sounds = {"earrape_tamer","cuntroad","bestdo","melee_song","skyroad_song","gas_halo","grim_109_req"},
	ems_sprites = {
		{
			pos = Vector(24.82,-1.28,56.81),
			material = "sprites/glow04_noz",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "warthogh2a", light_table)

local light_table = {
	L_HeadLampPos = Vector(102.5,15.239,53),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(102.5,-15.239,53),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-95.38,17.91,51.29),
	L_RearLampAng = Angle(0,180,0),

	R_RearLampPos = Vector(-95.38,-17.91,51.29),
	R_RearLampAng = Angle(0,180,0),
	
	Headlight_sprites = { 
{pos =Vector(97.2,8,49.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(97.2,2,49.55),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
{pos =Vector(97.2,8,49.55),material = "snowysnowtime/sprites/light_volume",size = 0, color = Color(255,255,255,225)},
{pos =Vector(97.2,2,49.55),material = "snowysnowtime/sprites/light_volume",size = 0, color = Color(255,255,255,225)},
	},
	Rearlight_sprites = {
{pos =Vector(-102.399,30.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,0,0,225)},
{pos =Vector(-102.399,-30.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,0,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-102.399,30.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,72,0,225)},
{pos =Vector(-102.399,-30.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,72,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-102.399,33.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,255,255,225)},
{pos =Vector(-102.399,-33.052,58.603),material = "sprites/glow04_noz",size = 25, color = Color(255,255,255,225)},
	},
	ems_sounds = {"hcesire","hcesire2","h2asire3","h2asire4","h2asire5","h2asire6"},
	ems_sprites = {
		{
			pos = Vector(24.82,-1.28,56.81),
			material = "sprites/glow04_noz",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "warthogh2a_serious", light_table)

local light_table = {
	L_HeadLampPos = Vector(-38.97,-91.98,31.39),
	L_HeadLampAng = Angle(0,-90,0),

	R_HeadLampPos = Vector(38.97,-91.98,31.39),
	R_HeadLampAng = Angle(0,-90,0),

	L_RearLampPos = Vector(-33,94.4,37.69),
	L_RearLampAng = Angle(-5,90,-15),

	R_RearLampPos = Vector(33,94.4,37.69),
	R_RearLampAng = Angle(-5,90,-15),
	
	Headlight_sprites = { 
{pos =Vector(-38.97,-91.98,31.39),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(-39.73,-87.76,34.57),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(-40.23,-84.36,37.17),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(38.97,-91.98,31.39),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(39.73,-87.76,34.57),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
{pos =Vector(40.23,-84.36,37.17),material = "sprites/glow04_noz",size = 20, color = Color(255,255,255,225)},
	},
	Headlamp_sprites = { 
	},
	Rearlight_sprites = {
{pos =Vector(-33,94.4,37.69),material = "sprites/glow04_noz",size = 25, color = Color(255,0,0,225)},
{pos =Vector(33,94.4,37.69),material = "sprites/glow04_noz",size = 25, color = Color(255,0,0,225)},
{pos =Vector(-34,92.4,41.31),material = "sprites/glow04_noz",size = 25, color = Color(255,0,0,225)},
{pos =Vector(34,92.4,41.31),material = "sprites/glow04_noz",size = 25, color = Color(255,0,0,225)},
	},
	Brakelight_sprites = {
{pos =Vector(-33,94.4,37.69),material = "sprites/glow04_noz",size = 25, color = Color(255,84,0,225)},
{pos =Vector(33,94.4,37.69),material = "sprites/glow04_noz",size = 25, color = Color(255,84,0,225)},
{pos =Vector(-34,92.4,41.31),material = "sprites/glow04_noz",size = 25, color = Color(255,84,0,225)},
{pos =Vector(34,92.4,41.31),material = "sprites/glow04_noz",size = 25, color = Color(255,84,0,225)},
	},
	Reverselight_sprites = {
{pos =Vector(-40.34,93.14,35.44),material = "sprites/glow04_noz",size = 25, color = Color(255,255,255,225)},
{pos =Vector(40.34,93.14,35.44),material = "sprites/glow04_noz",size = 25, color = Color(255,255,255,225)},
	},
	ems_sounds = {"hcesire","hcesire2","h2asire3","h2asire4","h2asire5","h2asire6","gas_halo","snow_gtasa_song","snow_sonic06_lol"},
	ems_sprites = {
		{
			pos = Vector(24.82,-1.28,56.81),
			material = "sprites/glow04_noz",
			size = 10,
			Colors = {Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255),Color(255,255,255,255),Color(255,255,255,255),Color(144,144,255,255)}, -- the script will go from color to color
			Speed = 0.125, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "snowciv2a_serious", light_table)