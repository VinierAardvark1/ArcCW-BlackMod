att.PrintName = "EOMPTS-MPS Mk. IV Master"
att.AbbrevName = "EOMPTS Master"
att.Icon = Material("entities/att/optic_eompts-mps.png")
att.Description = [[The EOTech Miniature Prototype Thermal Sight Multi-Sight Platform Mk. IV Master. Combines a standard EOTech Holo, a Thermal Scope, and a Night-Vision Scope into one, beautiful, bulky package.
Now this is what I call engineering! It might be a heavy son of a bitch, but I'd say its utility makes up for it; I mean, it's a few leagues smaller than other scopes that do the same. Might I recommend keeping it out of the weather, though? Don't think the R&D guys quite got around to finishing the thing.]]
att.SortOrder = 10
att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
    "autostat.thermal",
	"Night vision"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
}

att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/atts/eompts_4b.mdl"
att.HolosightPiece 	= "models/weapons/atts/eompts_hsp_4a.mdl"

att.Mult_SightTime = 1.5
att.Mult_SightedSpeedMult = 0.75
att.Mult_SpeedMult = 0.9

att.AdditionalSights = {
    {
        Pos = Vector(-0.01, 8, -1.52),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        HolosightBone = "holosight",
        HolosightData = {
            Holosight = true,
            HolosightMagnification = 1.75,
            HolosightMagnificationMin = 1.1,
            HolosightMagnificationMax = 4,
            HolosightReticle = Material("hud/scopes/eompts-mps.png"),
            HolosightNoFlare = true,
            HolosightSize = 14,
            HolosightBlackbox = false,
            Colorable = false,
            HolosightPiece 	= "models/weapons/atts/eompts_hsp_4a.mdl"
        },
		ScrollFunc = ArcCW.SCROLL_ZOOM,
		ZoomLevels = 4,
        ZoomSound = "buttons/combine_button5.wav",
        IgnoreExtra = true,
        Contrast = 0.51,
        Brightness = 0.1,
        SpecialScopeFunction = function(screen)
            render.PushRenderTarget(screen)
            
            DrawBloom(0,0.3,5,5,3,0.5,1,1,1)
            DrawSharpen(1,1.75)
            DrawMotionBlur(0.75,1,1/75)

            render.PopRenderTarget()
        end,
    },
    {
        Pos = Vector(-0.01, 8, -1.52),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        HolosightBone = "holosight",
        HolosightData = {
            Holosight = true,
            HolosightMagnification = 1.75,
            HolosightMagnificationMin = 1.1,
            HolosightMagnificationMax = 4,
            HolosightReticle = Material("hud/scopes/eompts-mps_thrm.png"),
            HolosightNoFlare = true,
            HolosightSize = 14,
            HolosightBlackbox = false,
            Colorable = false,
            HolosightPiece 	= "models/weapons/atts/eompts_hsp_4a.mdl"
        },
		ScrollFunc = ArcCW.SCROLL_ZOOM,
		ZoomLevels = 4,
        ZoomSound = "buttons/combine_button5.wav",
        Thermal = true,
        IgnoreExtra = true,
        Contrast = 0.51,
        Brightness = 0.1,
        SpecialScopeFunction = function(screen)
            render.PushRenderTarget(screen)
            
            DrawBloom(0,0.3,5,5,3,0.5,1,1,1)
            DrawSharpen(1,1.75)
            DrawMotionBlur(0.75,1,1/75)

            render.PopRenderTarget()
        end,
    },
    {
        Pos = Vector(-0.01, 8, -1.52),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        HolosightBone = "holosight",
        HolosightData = {
            Holosight = true,
            HolosightMagnification = 1.75,
            HolosightMagnificationMin = 1.1,
            HolosightMagnificationMax = 4,
            HolosightReticle = Material("hud/scopes/eompts-mps_nvgs.png"),
            HolosightNoFlare = true,
            HolosightSize = 14,
            HolosightBlackbox = false,
            Colorable = false,
            HolosightPiece 	= "models/weapons/atts/eompts_hsp_4a.mdl"
        },
		ScrollFunc = ArcCW.SCROLL_ZOOM,
		ZoomLevels = 4,
        ZoomSound = "buttons/combine_button5.wav",
        NVScope = true,
        NVScopeColor = Color(0, 255, 100),
        NVFullColor = false,
        IgnoreExtra = true,
        Contrast = 0.51,
        Brightness = 0.1,
        SpecialScopeFunction = function(screen)
            render.PushRenderTarget(screen)
            
            DrawBloom(0,0.3,5,5,3,0.5,1,1,1)
            DrawSharpen(1,1.75)
            DrawMotionBlur(0.75,1,1/75)

            render.PopRenderTarget()
        end,
    },
}

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/eompts-mps.png")
att.HolosightNoFlare = true
att.HolosightSize = 14
att.HolosightBone = "holosight"
att.HolosightMagnification = 1.75
att.HolosightBlackbox = false
att.ScopeGlint = true