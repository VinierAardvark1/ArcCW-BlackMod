att.PrintName = "Custom Engineered Barrel for .17 Incinerator Cartridge"
att.AbbrevName = "Custom Incinerator Barrel"
att.Icon = Material("entities/att/muzz_hrbar.png")
att.Description = [[A specially designed custom barrel for the .17 Incinerator cartridge. Otherwise, the projectile would disintegrate upon firing. Could possibly be adapted for other uses...

“The speeds are so great we had to use a custom 3-groove, polygonal-rifling 1:20″-twist barrel to keep the bullets from disintegrating on launch. The polygonal land/groove geometry reduces bullet engraving, which also helps keep the bullets in one piece. Also we must use solids — regular jacketed bullets can’t handle these speeds”.]]
att.SortOrder = 5
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"muzzle", "barrel"}

att.Mult_AccuracyMOA = 0.725
att.Mult_Range = 1.125
att.Mult_SpeedMult = 0.85
att.Mult_SightedSpeedMult = 0.9

att.GivesFlags = {"muzz_17_incinerator"}