att.PrintName = "HOPPE'S No. 9 Deluxe Gun Cleaning Kit" -- Not sponsored, lol
att.AbbrevName = "Grease"
att.Icon = Material("entities/att/perk_hoppes9.png")
att.Description = [[I don't see why you come to me for oils and cleaners, but lucky for you I have something just for that. A trusted brand, for certain. Used it the past few years, had no problems with it whatsoever.
Because everyone needs to clean and lubricate their guns. Yes, even AK-pattern rifles. It helps the weapon perform better, even if they're made to perform under extreme conditions-Do I really have to explain this to another customer??]]
att.Desc_Pros = {
	"Cleans and lubricates your gun.",
}
att.Desc_Cons = {
	"Doesn't smell very good...",
}
att.Desc_Neutrals = {
	"Make sure you clean and lubricate your weapons regularly.",
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"perk", "go_perk", "uc_fg"}

att.NotForNPC = true

att.Mult_RPM = 1.15
att.Mult_CycleTime = 0.875
att.Mult_ReloadTime = 0.95
att.Mult_DrawTime = 0.85
att.Mult_SightTime = 0.85
att.Mult_MalfunctionMean = 1.35

att.Health = 255
att.DamageOnReload = 1
att.DamageOnShoot = 1
att.Breakable = true

att.Hook_AttDestroyed = function(wep, data)
    wep:EmitSound("weapons/arccw/c4/c4_disarm.wav", 75, 100, 1, CHAN_STATIC)
end