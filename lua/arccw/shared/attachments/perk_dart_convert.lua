att.PrintName = "Dart Gun Conversion"
att.Icon = Material("entities/att/fcg_dart_convert.png")
att.Description = [[A simple conversion kit that can change any gun into a CO2-powered air rifle, or pistol if you so desire.
Why you would want to do this to a perfectly fine piece of human engineering, I don't really know, but maybe it allows for a gun to be used in a different manner?]]
att.Desc_Pros = {
	"Gives reload speed to compensate."
}
att.Desc_Cons = {
	"No other perks."
}
att.Desc_Neutrals = {
	"Exclusively for weapons that don't have a fcg slot.",
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"perk", "go_perk"}

att.Silencer = true

att.Mult_Range = 0.5
att.Mult_Recoil = 0.15
att.Mult_RecoilSide = 0.15
att.Mult_ShootVol = 0.5
att.Mult_ShootPitch = 2
att.Mult_MuzzleVelocity = 0.5
att.Mult_DrawTime = 0.95
att.Mult_SightTime = 0.95
att.Mult_ReloadTime = 0.85

att.Override_Damage = 1
att.Override_DamageMin = 5
att.Override_Penetration = 0.2

att.GivesFlags = {"perk_dart_convert"}
att.ExcludeFlags = {"fcg_dart_convert"}

-- att.Hook_Compatible = function(wep)
--     if not ((wep.RegularClipSize) <= 15) then return false end
--     local tbl = engine.ActiveGamemode() == "terrortown" and {"357"} or {"pistol"} or {"ar2"} or {"SniperPenetratedRound"}
--     if not table.HasValue(tbl, wep.Primary.Ammo or "") then return false end
-- end