-----------------------------------------------------------------------------
--  agorm_rock1
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "rock4_hd",
	blocking			= true,
	category			= "rocks",
	damage				= 100,
	description			= "rock4_hd",
	energy				= 0,

	flammable			= false,
	footprintX			= 2,
	footprintZ			= 2,
	height				= "36",
	hitdensity			= "5",
	metal				= 50,
	object				= "rock4_hd.s3o",
	reclaimable			= true,
	autoreclaimable		= true, 	
	world				= "All Worlds",
	customparams = {
		model_author = "MaDDoX",
		normalmaps = "yes",
		normaltex = "unittextures/rock_hd_normal.tga",
		treeshader = "no",
		randomrotate		= "false",
	}, 
}
return lowerkeys({[featureDef.name] = featureDef})