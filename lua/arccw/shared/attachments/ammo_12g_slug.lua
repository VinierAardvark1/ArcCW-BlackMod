att.PrintName = "12 Gauge Slugs"
att.Icon = Material("entities/att/ammo_12g_slug.png")
att.Description = [[Standard shotgun slug containing a solid, heavy lead projectile, design for hunting and self defense. They are typically bigger and heavier than a rifle bullet, and therefore have shorter ranges than a standard rifle would.
I don't know why you ordered regular ol' slugs from me of all people, but I guess the stuff you find elsewhere isn't good enough, huh? Whatever, I'm not one to judge. Take the slugs and go hunt some game for me, yeah? I'll make some reindeer roast for us some day.
Promise.]]
att.Desc_Pros = {
    "Great for single targets and longer ranges"
}
att.Desc_Cons = {
    "con.projectilecount"
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"ammo_shotgun", "go_ammo"}

att.Override_Num = 1

att.Mult_ShootPitch = 1.15
att.Mult_Damage = 0.75
att.Mult_DamageMin = 2.5
att.Mult_Range = 1.25
att.Mult_Penetration = 1.5
att.Mult_AccuracyMOA = 0.25

att.Hook_Compatible = function(wep)
    if !wep:GetIsShotgun() then return false end
end