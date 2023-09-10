att.PrintName = "Doom Shells"
att.Icon = Material("entities/att/ammo_doom.png")
att.Description = [[An experimental round originally intended to be to be a slug mixed with buckshot and birdshot to form 3 layers of firepower to essentially make a wall of lead. A bit of testing showed promising results, but the company producing these ran out of resources and needed funding badly, so they crammed as many pellets into a 12 gauge shell as they could and sold it off, so now we have this baby.
It is a little ridiculous, I will admit, but watching test dummies and blocks of ballistic gel get shredded by these things is fucking hilarious. I hope you don't have tripophobia. But if you do, then uhh... I hope the target explodes?]]
att.Desc_Pros = {
    "100 fucking pellets"
}
att.Desc_Cons = {
    "blackmod.shitcode"
}
att.Desc_Neutrals = {
    "OH FUCK",
	"blackmod.desc",
}
att.AutoStats = true
att.NotForNPCs = true
att.Slot = {"ammo_shotgun", "go_ammo", "ud_ammo_shotgun", "uc_ammo"}

att.Override_Num = 100
att.Override_Penetration = 0.1

att.Mult_ShootPitch = 0.75
att.Mult_Damage = 1.375
att.Mult_DamageMin = 0.15
att.Mult_Range = 0.825
att.Mult_Recoil = 1.5
att.Mult_CycleTime = 1.2
att.Mult_RPM = 0.8
att.Mult_ReloadTime = 1.2

att.Hook_Compatible = function(wep)
    if !wep:GetIsShotgun() then return false end
end

att.AddSuffix = " of Doom"