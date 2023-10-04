att.PrintName = "Rubber Bullets"
att.Icon = Material("entities/att/ammo_rubber.png")
att.Description = [[Less-lethal alternatives to standard bullets, typically used for riot control in public areas or prisons. Despite the name, rubber bullets typically have either a metal core with a rubber coating, or a mixture with rubber being a small component.
Found these off some cops that, ah, interrupted a convoy of ours one day. They worked pretty well until we managed to "talked things out." Maybe you'll have a better use for them than they did.
Little known fact about these things: They can very easily still kill someone, especially if you're too close. Aim for the lower torso, not the head, and especially not the eyes. Just keep that in mind, yeah? Or don't. I don't care.]]
att.Desc_Pros = {
    "Drains momentum from players hit",
}
att.Desc_Cons = {
    "blackmod.phys",
    "Most likely won't kill",
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"ammo_bullet","ammo_shotgun","go_ammo"}

att.Mult_ShootPitch = 1.5
att.Mult_ShootVol = 0.9
att.Mult_Penetration = 0
att.Mult_Recoil = 0.5
att.Mult_Range = 0.5
att.Mult_MuzzleVelocity = 0.75

att.Override_Num = 1
att.Override_Damage = 15
att.Override_DamageMin = 1.5
att.Override_AlwaysPhysBullet = true

att.Override_DamageType = DMG_CLUB

att.Hook_BulletHit = function(wep, data)
    if CLIENT then return end

    if data.tr.Hit and data.tr.Entity:IsPlayer() then
        local ply = data.tr.Entity
        local vel = ply:GetVelocity()
        ply:SetVelocity(-vel * 0.75)
    end
end