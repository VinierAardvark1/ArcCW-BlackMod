att.PrintName = ".50 Beowulf 5-Round Compact Mag"
att.AbbrevName = "5-Round Compact Mag"
att.SortOrder = 20
att.Icon = Material("entities/att/acwatt_ud_m16_mag_20.png", "smooth mips")
att.Description = [[Original, low-capacity magazine for the M16 modified for and loaded with .50 Beowulf. The relatively lighter load reduces the weapon's weight, but is it worth removing 2 bullets?]]
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 5

att.Mult_SightTime = 0.95
att.Mult_ReloadTime = 0.9
att.Mult_Sway = 0.95

att.Mult_SpeedMult = 1.01

att.ActivateElements = {"ud_m16_mag_20"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_20"
end

att.RequireFlags = {"m16_50beo"}