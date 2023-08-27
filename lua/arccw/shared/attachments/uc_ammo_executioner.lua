att.PrintName = "Point-Blank Execution Rounds"
att.AbbrevName = "Executioner Rounds"
att.Icon = Material("entities/att/ammo_shepherd.png")
att.Description = [[Cartridges designed to increase a pistol or pistol-caliber weapon's lethality in close quarters firefights, but is primarily used as a way to guarantee a kill should the bullet not enter the victim's head. Because of the ammo essentially being a hyper-lethal hollow point round, it does not reliably penetrate armor or walls.

"Good. That's one less loose end."]]
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"uc_ammo"}

att.Override_Num = 1

att.Override_Damage = 500
att.Override_DamageMin = 5

att.Mult_ShootVol = 1.025
att.Mult_Range = 0.05
att.Mult_Penetration = 0.33
att.Mult_RPM = 0.9
att.Mult_ReloadTime = 1.2

att.Hook_Compatible = function(wep)
    return table.HasValue({"arccw_ur_329", "arccw_ur_deagle"}, wep.ClassName)
end