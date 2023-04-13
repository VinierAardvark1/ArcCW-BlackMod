att.PrintName = "PM-II Aftermarket (FLIR)"
att.AbbrevName = "Aftermarket Scope"
att.Icon = Material("entities/att/optic_schmidt_flir.png")
att.Description = [[Medium-to-long range sniper optic. Popular among hunters. Someone upgraded this model with an aftermarket thermographic camera and fixed the variable zoom dials. It ain't as light as the original, but variable zooms and thermal scopes are always a nice thing to have, right?]]
att.SortOrder = 7
att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/atts/gso/schmidt.mdl"

att.Mult_SightTime = 1.45
att.Mult_SpeedMult = 0.85

att.AdditionalSights = {
    {
        Pos = Vector(0, 11, -1.43061),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
		ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 3,
        ZoomSound = "arccw_go/fiveseven/fiveseven_slideback.wav",
        Thermal = true,
        IgnoreExtra = true
    },
}

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/schmidt_flir.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 20
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/atts/gso/schmidt_hsp.mdl"
att.Colorable = true
att.HolosightBlackbox = true
att.HolosightMagnification = 2
att.HolosightMagnificationMin = 2.5
att.HolosightMagnificationMax = 7