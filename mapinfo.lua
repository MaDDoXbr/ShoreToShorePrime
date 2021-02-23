local mapinfo = {
   name        = "Shore to Shore Prime",
   shortname   = "s2s",
   description = "Shore to Shore * 12 Players *",
   author      = "MaDDoX",
   version     = "0.9",
   modtype     = 3, --// 3=map

   maphardness     = 10,
   notDeformable   = false,
   gravity         = 120,
   tidalStrength   = 20,
   maxMetal        = 1.2, ---1.0,
   extractorRadius = 100,
   voidWater       = false,
   voidGround      = false,
   autoShowMetal   = true,
   
	resources = {
		--grassBladeTex = "",
		--grassShadingTex = "",
		detailTex = "detailtexblurred.bmp",
		
		specularTex = "specular.png",
		detailNormalTex = "normal.dds",
		
		--splatDetailTex = "iwantDNTS.tga", --"detailtex.tga",
		--splatDistrTex = "splats.dds",
		splatDetailNormalDiffuseAlpha = false, --0.5, --1
		--splatDetailNormalTex1 = "dnts_rock_1k.dds";
		--splatDetailNormalTex2 = "dnts_grass_1k.dds";		
		--splatDetailNormalTex3 = "dnts_sand_1k.dds";
--		splatDetailNormalTex4 = "rock_77_highpass_dnts.tga";
		--skyReflectModTex = "",
		
	
		--lightEmissionTex = "",
		alpha = false,
	},   

	splats = {
		texScales = {0.01, 0.015, 0.01, 0.003}, --//cliffs, moss, grass, sand
		texMults  = {0.3, 0.4, 0.42, 0.4},
	},

	atmosphere = {
		MinWind=9;
		MaxWind=14;

		fogStart     = 0.7,
		fogEnd       = 1.0,
		fogColor     = {0.7, 0.7, 0.8},

		sunColor     = {1.0, 0.8, 0.8},
		skyColor     = {0.1, 0.15, 0.5},
		skyDir       = {0.0, 0.0, -1.0},
		skyBox       = "cleardesert.dds",

		cloudDensity = 0.1,
		cloudColor   = {1.0, 1.0, 1.0},
	},	

    terrainTypes = {
--      [0] = {
         --name = "Earth",
         --hardness = 15,
         --receiveTracks = true,
         --moveSpeeds = {
            --tank  = 1.0,
            --kbot  = 1.0,
            --hover = 1.0,
            --ship  = 1.0,
         --},
      --},
	[0] = {
		name = "Default",
		hardness = 1.0,
		receiveTracks = true,
		moveSpeeds = {
			tank  = 1.0,
			kbot  = 1.0,
			hover = 1.0,
			ship  = 1.0,
		},
	},	  
    [50]  = { 
         name = "LowerLands",
         hardness = 15,
         receiveTracks = true,
         moveSpeeds = {
            tank  = 1.1,
            kbot  = 1.0,
            hover = 1.0,
            ship  = 1.0,
         },
		 },
	[100]  = { 
         name = "RockSand",
         hardness = 13,
         receiveTracks = true,
         moveSpeeds = {
            tank  = 1,
            kbot  = 0.9,
            hover = 1,
            ship  = 1,
         },
		 },
	[150]  = { 
         name = "GrassnBushes",
         hardness = 20,
         receiveTracks = true,
         moveSpeeds = {
            tank  = 0.9,
            kbot  = 1,
            hover = 0.9,
            ship  = 1,
         },
		 },
	[255]  = { 
         name = "Rock",
         hardness = 50,
         receiveTracks = true,
         moveSpeeds = {
            tank  = 1,
            kbot  = 1,
            hover = 1,
            ship  = 1,
         },
		},
	},

	lighting = {
		--// dynsun
		--sunStartAngle = 0.0,
		--sunOrbitTime  = 1440.0, --how do i turn this off?
--		sunDir = {
--		  1.3,
--		  0.95,
--		  -0.62,
--		},
		--sunStartAngle = 0.0,

		--// unit & ground lighting
--		groundambientcolor            = { 0.5, 0.5, 0.6 },
--		grounddiffusecolor            = { 0.85, 0.85, 0.55 },

    
		groundAmbientColor  = {0.73, 0.64, 0.39},
		groundDiffuseColor  = {0.9, 0.9, 0.9}, --{0.9,0.8,0.82}, --{0.55, 0.7, 0.7},
		groundSpecularColor = {0.5, 0.5, 0.1}, --{0.2, 0.2, 0.2},
		groundShadowDensity = 1.2,
	  	unitshadowdensity          = 0.9,
		unitAmbientColor = {
			  0.55,
			  0.5,
			  0.4,
		},    
		unitDiffuseColor = {
			  0.2,
			  0.15,
			  0.125,		
--			  0.4,
--			  0.3,
--			  0.25,
			},
		unitSpecularColor = {
			  0.5,
			  0.4,
			  0.3,
		},

		--sunDir = {0.008, 0.95, 0.0, 0}, --{0.008, 0.556, -0.444, 1e9},
		--sunDir = {-0.25, 0.1, -0.33, 0}, -- x pos = from west, neg = from east
									 -- y => neg = metallic, focused; pos = scattered
									 -- z pos = frontal, neg = away from start camera		
		sunDir = {      0.1807599,      1,      -0.25, },
		
		specularsuncolor    = { 0.1, 0.1, 0.1 },
		 
		specularExponent    = 100.0, --seems useless
	},

	water = { --regular water settings
		damage =  0,

		repeatX = 0.0,
		repeatY = 0.0,

		absorb    = { 0.08, 0.005, 0.001 }, --absorption coefficient per elmo of water depth
		basecolor = { 1.0, 1.0, 1.0 }, -- the color shallow water starts out at
		mincolor  = { 0.0, 0.1, 0.3 },

		ambientFactor  = 1.0,
		diffuseFactor  = 1.0,
		specularFactor = 1.4,
		specularPower  = 40.0,

		surfacecolor  = { 0.67, 0.8, 1.0 }, --color of the water texture
		surfaceAlpha  = 0.1,
		diffuseColor  = {0.5, 0.5, 0.5},-- {0.0, 0.0, 0.0},
		specularColor = {0.5, 0.5, 0.5},
		planeColor = {0.00, 0.15, 0.15}, --outside water plane color

		fresnelMin   = 0.2,
		fresnelMax   = 1.6,
		fresnelPower = 20.0, --8.0,

		reflectionDistortion = 1.0,

		blurBase      = 2.0,
		blurExponent = 1.5,

		perlinStartFreq  =  8.0,
		perlinLacunarity = 3.0,
		perlinAmplitude  =  0.9,
		windSpeed = 1.0, --// does nothing yet

		shoreWaves = true,
		forceRendering = true, --false,
		
		hasWaterPlane = true, --specifies whether the outside of the map has an extended water plane

		--// undefined == load them from resources.lua!
		--texture =       "water_color.png",
		--foamTexture =   "water_foam.png",
		normalTexture = "water_normal1.png", --"animwater_normal.png",
		--    normalTexture = "bitmaps/waterbump.png",
		--    texture = "bitmaps/ocean.jpg",
		
		--caustics = {
		--	"",
		--	"",
		--},
	},

	teams = {
      [0] = {startPos = {x = 452, z = 361}},
      [1] = {startPos = {x = 343, z = 1745}},   
	  [2] = {startPos = {x = 180, z = 2777}},
      [3] = {startPos = {x = 2255, z = 339}},  
	  [4] = {startPos = {x = 1961, z = 1868}},
      [5] = {startPos = {x = 2150, z = 2660}},  
	  [6] = {startPos = {x = 19288, z = 410}},
	  [7] = {startPos = {x = 19250, z = 1460}},
	  [8] = {startPos = {x = 19220, z = 2810}},
      [9] = {startPos = {x = 17300, z = 400}},  
      [10] = {startPos = {x = 17560, z = 1430}},
      [11] = {startPos = {x = 17750, z = 2550}},   
   },
   
	smf = {
		minHeight = -85, --[behe compiler]--178, -- -275
		maxHeight = 158, --[behe compiler]--250, --1355, --2025
		smtFileName0 = "maps/shoretoshoreprime.smt",
	},
}
return mapinfo