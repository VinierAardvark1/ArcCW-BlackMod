att.PrintName = "Leupold Mark 4 Long Range Tactical Scope (4.5-14x)"
att.AbbrevName = "Leupold Mark 4 (4.5-14x)"
att.Icon = Material("entities/att/optic_leupold_mk4.png", "smooth")
att.Description = "Adjustable medium to long range optic, used on a variety of US military marksman and sniper rifles."
att.SortOrder = 8
att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/atts/fas2_optic_lmk4.mdl"
att.HolosightPiece = "models/weapons/atts/fas2_optic_lmk4_hsp.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.63),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 3,
        ZoomSound = "weapons/atts/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true,
    },
}
att.Holosight = true
att.HolosightMagnification = 4.5
att.HolosightMagnificationMin = 4.5
att.HolosightMagnificationMax = 14
att.HolosightReticle = Material("hud/scopes/leoupold_mk4.png")
att.HolosightNoFlare = true
att.HolosightSize = 16
att.HolosightBone = "holosight"
att.Colorable = false
att.HolosightBlackbox = true

att.Mult_SightTime = 1.25
att.Mult_SpeedMult = 0.9

att.Mult_VisualRecoilMult = 0.2

