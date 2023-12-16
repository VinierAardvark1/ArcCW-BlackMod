att.PrintName = "Coin Shot"
att.Icon = Material("entities/att/blackmod_placeholder.png")
att.Description = [[A standard shotshell loaded with 10 coins. Has terrible range and spread, but will shred in close quarters.

According to legend, Bob Olinger loaded his double barrel shotgun with silver dimes. This same shotgun was then used by Billy the Kid to kill him. Now, most likely, the shotgun was loaded with standard buckshot, but ain't it fun to think a man got killed by a dollar?]]
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.NotForNPCs = true
att.Slot = {"ammo_shotgun", "go_ammo"}

att.Override_Num = 10
att.Override_Penetration = 0.2

att.Mult_Damage = 1.4
att.Mult_DamageMin = 0.05
att.Mult_Range = 0.85
att.Mult_AccuracyMOA = 1.1
att.Mult_Recoil = 0.9


att.Hook_Compatible = function(wep)
    if !wep:GetIsShotgun() then return false end
end