att.PrintName = "Wax Slugs"
att.Icon = Material("entities/att/ammo_12g_slug.png")
att.Description = [[A birdshot shell filled with wax. A quick and easy method to making homemade slug rounds, if you can't find or don't want to be found with proper slugs. Not as good as a proper slug, though, but gets the job done.
Not entirely sure you'd want this. I mean, I sold you slugs earlier, didn't I? Or was that the other... ah, it don't matter. Point is, why do you need these over...?
...Ah, poaching. Yeah, rangers'll cut ya for that. Alright, I guess that's fair.]]
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

att.Mult_ShootPitch = 1.1
att.Mult_Damage = 0.5
att.Mult_DamageMin = 1.5
att.Mult_Range = 1.175
att.Mult_Penetration = 1.05
att.Mult_AccuracyMOA = 0.2

att.Hook_Compatible = function(wep)
    if !wep:GetIsShotgun() then return false end
end