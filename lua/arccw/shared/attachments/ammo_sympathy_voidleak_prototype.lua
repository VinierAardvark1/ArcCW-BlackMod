att.PrintName = "Sealed Void Munitions Prototype #173-5A"
att.AbbrevName = "Void Ammunition"
att.Icon = Material("entities/att/tac_synthesis_placeholder_blackmod.png")
att.Description = [["Bull▇s ma▇▇ctu▇d by ▇▇▇▇ire ▇▇▇▇▇ o▇▇i▇▇▇, S▇▇▇y, ▇▇ ▇ntains a ▇▇▇ Void▇▇ that ▇▇▇▇ ▇▇ ▇▇▇."
So, this is... new. An overpressured round containing a small piece of the damn Void. Whatever I've shot this at gets erased from reality itself.
I... Y'know, I never expected to discover whatever the fuck the void is, but apparently it's a thing. And like most things, somebody went and weaponized it. I-I'm not entirely sure how to feel about this, to be honest with you. I don't even know if I should be selling it... I mean yeah, I've sold you anti-tank armaments, a DIY railgun kit, minigun modifications, a .950 JDJ rifle, fucking antimatter rounds, and so much other weird shit that this wouldn't seem so bad, yeah? It's just... there's something about this that doesn't sit right with me. Here-just take it before I overthink things.]]
att.Desc_Pros = {
}
att.Desc_Cons = {
    "blackmod.phys",
    "- Enemy is sent to the Void:tm:",
    "- Immoral",
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"ammo_bullet", "ammo_shotgun", "go_ammo"}

att.Mult_Damage = 2
att.Mult_DamageMin = 2
att.Mult_Penetration = 0

att.Mult_RecoilSide = 1.25
att.Mult_Recoil = 1.2
att.Mult_RangeMin = 1.25
att.Mult_Range = 1.3

att.Mult_RPM = 1.08
att.Mult_ShootVol = 1.25

att.Mult_MalfunctionMean = 0.7
att.Mult_PhysBulletMuzzleVelocity = 1.25

att.Override_DamageType = DMG_DISSOLVE + DMG_AIRBOAT
att.Override_AlwaysPhysBullet = true
att.Override_PhysTracerProfile = 5 --ourple  lol
att.Override_Num = 1

att.Hook_GetShootSound = 
function(wep, sound)
    return table.Random({"weapons/glitchy/glitchshot1.wav", "weapons/glitchy/glitchshot2.wav", "weapons/glitchy/glitchshot3.wav", "weapons/glitchy/glitchshot4.wav"})
end

att.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, 24, wep:GetDamage(data.range))
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
	--Helicopter is apparently hardcoded to only take damage from the fucking airboat gun but can be shot down by RPG??? wat
        data.dmgtype = DMG_AIRBOAT
    end
end