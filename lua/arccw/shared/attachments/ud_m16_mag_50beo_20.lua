att.PrintName = ".50 Beowulf 20-Round Casket Mag"
att.AbbrevName = "20-Round Casket Mag"
att.Icon = Material("entities/att/acwatt_ud_m16_mag_60.png", "smooth mips")
att.Description = [[Quad-stacked 5.56 magazine converted to load .50 Beowulf rounds in a double stack. Quite bulky, but provides 5 more bullets than the 15 rounder. THIS is the farthest you can reasonably go with these cartridges.]]
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.SortOrder = 0
att.Override_ClipSize = 20

att.Mult_SightTime = 1.25
att.Mult_ReloadTime = 1.325
att.Mult_Sway = 2.5

att.Mult_SpeedMult = 0.925

att.ActivateElements = {"ud_m16_mag_60"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_60"
end

att.RequireFlags = {"m16_50beo"}