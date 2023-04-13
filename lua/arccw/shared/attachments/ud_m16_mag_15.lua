att.PrintName = "AR-15 15-Round Civillian Mag"
att.AbbrevName = "15-Round Civ Mag"
att.SortOrder = 15
att.Icon = Material("entities/att/acwatt_ud_m16_mag_15.png", "smooth mips")
att.Description = "Smaller magazine pinned to be compliant with civillian capacity restrictions, but is faster to load than the 30-Round."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {
    "blackmod.desc"
}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 15

att.Mult_SightTime = 0.925
att.Mult_ReloadTime = 0.95
att.Mult_Sway = 0.875

att.Mult_SpeedMult = 1.01
att.Mult_SightedSpeedMult = 1.025
att.Mult_ShootSpeedMult = 1.025

att.ActivateElements = {"ud_m16_mag_50beo"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_20"
end

att.ExcludeFlags = {"m16_usas", "m16_9mm", "m16_50beo"}