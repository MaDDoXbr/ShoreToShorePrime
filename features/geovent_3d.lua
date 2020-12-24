-----------------------------------------------------------------------------
--  geovent_3d
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "geovent_3d",
	blocking			= true,
	category			= "resources",
	damage				= 1000000,
	description			= "geovent_3d",
	energy				= 0,
	flammable			= false,
	footprintX			= 3,
	footprintZ			= 3,
	height				= "36",
	hitdensity			= "5",
	metal				= 0,
	object				= "geovent_3d.s3o",
	reclaimable			= false,
	autoreclaimable		= false, 	
	world				= "All Worlds",
	customparams = {
		model_author = "MaDDoX",
		normalmaps = "yes",
		normaltex = "unittextures/geovent_3d_normal.dds",
		treeshader = "no",
		randomrotate = "false",
	},
}
return lowerkeys({[featureDef.name] = featureDef})