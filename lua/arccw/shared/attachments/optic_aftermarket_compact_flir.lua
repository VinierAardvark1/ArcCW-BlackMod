att.PrintName = "PM-II Aftermarket Compact (FLIR)"
att.AbbrevName = "Aftermarket Compact Scope"
att.Icon = Material("entities/att/optic_hunter_flir.png", "mips smooth")
att.Description = [[Reduced size scope for pistols and light rifles. An aftermarket thermographic camera has been added to this scope, but no variable zoom for this smaller scope. Unfortunately, this means the scope doesn't have as much zoom as the original counterpart, and is slightly heavier due to the added components.]]
att.SortOrder = 2.5
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
att.Slot = {"optic", "optic_lp"}

att.Model = "models/weapons/atts/gso/hunter.mdl"

att.Mult_SightTime = 1.15
att.Mult_SpeedMult = 0.9

att.AdditionalSights = {
    {
        Pos = Vector(0, 9, -1.44),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
		Thermal = true,
        IgnoreExtra = true
    },
}

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/hunter_flir.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 19
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/atts/gso/hunter_hsp.mdl"
att.Colorable = true
att.HolosightBlackbox = true
att.HolosightMagnification = 2