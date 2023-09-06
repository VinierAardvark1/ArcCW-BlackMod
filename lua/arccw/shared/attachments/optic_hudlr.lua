att.PrintName = "Heads Up Display-Linked Recital System"
att.AbbrevName = "HUD-LR"
att.Icon = Material("entities/att/optic_hudlr.png", "smooth")
att.Description = [["HUD-LR, a clandestine project developed by and made for special forces that utilize their suits with Heads-Up Displays. Eliminates tunnel vision by zooming the user's view in slightly, and speeds up target acquisition by placing a crosshair in the center of the HUD, eliminating the need to even move the weapon."
An insert from the paper my boys in the field found while pilfering some government laboratories, along with this chip. Seems like they got a pretty pricey piece of tech here... Unfortunately I don't have the necessary equipment to test it, but I know you do. So here, take the thing; it's on the house.]]
att.SortOrder = 80
att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
	"Might look weird on some guns",
}
att.Desc_Neutrals = {
    "+/- No tunnel vision",
	"blackmod.desc",
}

att.AutoStats = true
att.Slot = {"optic_sniper","optic","optic_lp","backup"}

att.Model = "models/weapons/atts/2d_3b2_hsp.mdl"
att.HolosightPiece = "models/weapons/atts/2d_3b2_hsp.mdl"

att.MountPositionOverride = 0
att.Mult_SightTime = 0
att.Mult_SightsDispersion = 0
att.Mult_Sway = 0.5
att.Mult_SightedSpeedMult = 5

att.AdditionalSights = {
    {
        Pos = Vector(3, 20, -2.4),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        IgnoreExtra = true,
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/hudlr_cross.png", "smooth")
att.HolosightFlare = nil
att.Colorable = true
att.HolosightNoFlare = true
att.HolosightSize = 39 --45 is the minimum value for this overlay to take up whole screen, with top/bottom cutoff that is. Doesn't matter when most of this reticle is empty space lol
att.HolosightConstDist = 20
att.HolosightBone = "holosight"
att.HolosightMagnification = 1
att.HolosightBlackbox = false

att.ModelOffset = Vector(0, 0, 0)