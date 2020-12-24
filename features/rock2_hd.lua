-----------------------------------------------------------------------------
--  agorm_rock1
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "rock2_hd",
	blocking			= true,
	category			= "rocks",
	damage				= 250,
	description			= "rock2_hd",
	energy				= 0,
	flammable			= false,
	footprintX			= 2,
	footprintZ			= 2,
	height				= "36",
	hitdensity			= "5",
	metal				= 150,
	mass				= 80,
	object				= "rock2_hd.s3o",
	reclaimable			= true,
	autoreclaimable		= true, 	
	world				= "All Worlds",
	customparams = {
		model_author = "MaDDoX",
		normalmaps = "yes",
		normaltex = "unittextures/rock_hd_normal.tga",
		treeshader = "yes",
	},
}
return lowerkeys({[featureDef.name] = featureDef})