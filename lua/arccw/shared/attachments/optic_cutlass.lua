att.PrintName = "Custom-Tooled Long Range Assisted Shooting and Surveillance Scope (5x-500x)"
att.AbbrevName = "CUTLASS Scope (5x-500x)"
att.Icon = Material("entities/att/placeholder_blackmod.png", "mips smooth")
att.Description = [[Telescopic optic that was originally packaged with a variant of the Remington 700 rifle, nicknamed the Pellington. This particular scope was chosen for its simplistic design and relatively compact size. It's been extensively modified for longer ranges and low-visibility conditions, sporting a ridiculous amount of variable zoom and built-in thermal imaging system, as well as a number of optimizations to reduce all the weight.
Just don't ask where all the electronics are, because I don't exactly know and its creator went off the grid months ago.]]
att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Neutrals = {
    -- "This attachment is (originally) from the BOCW Attachment Pack, Modified by VA1",
    "blackmod.desc",
}

att.SortOrder = 8

att.AutoStats = true
att.Slot = {"optic_sniper", "optic"}

att.Model = "models/weapons/atts/bocw_att_optic_pellingtonscope.mdl"
att.ModelOffset = Vector(0, 0, -0.3)

att.AdditionalSights = {
    {
        Pos = Vector(0, 8.15, -0.74),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
        HolosightBone = "holosight",
        HolosightData = {
            Holosight = true,
            HolosightMagnification = 1,
            HolosightMagnificationMin = 5,
            HolosightMagnificationMax = 500,
            HolosightReticle = Material("hud/scopes/bocw_optic_pellington_reticle_custom.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 22,
            HolosightBlackbox = true,
            Colorable = false,
            HolosightPiece = "models/weapons/atts/bocw_att_optic_pellingtonscope_hsp.mdl"
        },
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 25,
        ZoomSound = "universal.zoomsmooth",
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 8.15, -0.74),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
        HolosightData = {
            Holosight = true,
            HolosightMagnification = 1,
            HolosightMagnificationMin = 5,
            HolosightMagnificationMax = 500,
            HolosightReticle = Material("hud/scopes/bocw_optic_pellington_reticle_custom_thermal.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 22,
            HolosightBlackbox = true,
            Colorable = false,
            HolosightPiece = "models/weapons/atts/bocw_att_optic_pellingtonscope_hsp.mdl"
        },
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 25,
        ZoomSound = "universal.zoomsmooth",
        Thermal = true,
        ThermalScopeColor = Color(0, 255, 0),
        ThermalHighlightColor = Color(255, 255, 0),
        ThermalFullColor = true,
        ThermalScopeSimple = false,
        ThermalNoCC = false,
        ThermalBHOT = false,
        Contrast = 0.5, -- allows you to adjust the values for contrast and brightness when either NVScope or Thermal is enabled.
        Brightness = 0,
        IgnoreExtra = true,
    }
}

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/acwatt_bocw_optic_pellington_reticle.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 26
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/atts/bocw_att_optic_pellingtonscope_hsp.mdl"
att.Colorable = true

att.HolosightBlackbox = true

att.HolosightMagnification = 1

att.Mult_SightTime = 1.25