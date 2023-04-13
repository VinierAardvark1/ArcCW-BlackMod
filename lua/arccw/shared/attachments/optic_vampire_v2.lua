att.PrintName = "Vampire V2 (FLIR)"
att.Icon = Material("entities/att/optic_vampire2.png")
att.Description = [[Heavy infrared thermal vision scope capable of highlighting targets in white. Complex electronics require bulky chassis, but not nearly as hefty as the old model thanks to some new lightweight components.
I found these bits in a dumpster close to an establishment I frequent. Why or how they were there, I'm not sure. Figured you'd have more use for this than I do, so tell me what you think about it.]]
att.SortOrder = 50
att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
    "autostat.thermal"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
}

att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/atts/vampire.mdl"

att.Mult_SightTime = 1.25
att.Mult_SightedSpeedMult = 0.85
att.Mult_SpeedMult = 0.95

att.AdditionalSights = {
    {
        Pos = Vector(0, 9.5, -1.55),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 4,
        ZoomSound = "arccw_go/fiveseven/fiveseven_slideback.wav",
        Thermal = true,
        IgnoreExtra = true,
    }
}

att.ScopeGlint = true
att.Holosight = true
att.HolosightReticle = Material("hud/scopes/vampire2.png", "smooth")
att.HolosightNoFlare = true
att.HolosightSize = 16
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/atts/vampire_hsp.mdl"
att.HolosightMagnification = 2
att.HolosightBlackbox = true
att.HolosightConstDist = 42
att.HolosightMagnificationMin = 2
att.HolosightMagnificationMax = 8