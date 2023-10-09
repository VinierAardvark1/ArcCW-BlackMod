att.PrintName = "Exploding Ammo"
att.SortOrder = -1
att.Icon = Material("entities/att/ammo_spiked.png")
att.Description = [[Sabotaged ammunition left behind for enemy forces to find and use; more specifically, they are designed to explode and destroy the weapon used and injure or perhaps kill the person attempting to use said weapon. Typically put in guns and left behind for enemy armies, insurgent cells, or terrorists to find and attempt to use, typically demoralizing the enemy while also depleting enemy weapon supplies.
These where not so easy to make, compared to sabotaged ammo. Unlike that, the charges in these were replaced with actual explosives. So technically, each bullet is a tiny bomb. That doesn't mean your bullets become explosive, but the results sure as hell are.]]

att.Desc_Pros = {
}
att.Desc_Cons = {
    "blackmod.shitcode",
}
att.Desc_Neutrals = {
    "blackmod.danger2",
	"blackmod.desc",
}

att.AutoStats = true

att.Slot = {"ammo_bullet", "ammo_shotgun", "go_ammo", "uc_ammo", "ud_ammo_shotgun"}

att.Mult_MuzzleVelocity = 1.5
att.Mult_PhysBulletMuzzleVelocity = 1.5
att.Mult_AccuracyMOA = 2.5
att.Mult_HeatCapacity = 0.001
att.Mult_HeatDissipation = 0.001
att.Mult_HeatDelayTime = 99999999999999
att.Mult_FixTime = 99999999999999

att.Override_Damage = 0.1
att.Override_DamageMin = 0.1
att.Override_Jamming = true
att.Override_HeatLockout = true
att.Override_HeatFix = false
att.Override_AlwaysPhysBullet = true

att.Hook_PostOverheat = function(wep, heat)
    if SERVER then

        local dmg = DamageInfo()
        dmg:SetDamage(math.random(20, 80))
        dmg:SetDamageType(DMG_BLAST)
        dmg:SetInflictor(wep)
        dmg:SetAttacker(wep:GetOwner())
        wep:GetOwner():TakeDamageInfo(dmg)

        local eff = EffectData()
        eff:SetMagnitude(1)
        eff:SetScale(0.25)
        eff:SetRadius(2)
        util.Effect("Sparks", eff)
        util.Effect("Explosion", eff)

        if (wep:GetOwner():IsPlayer()) then
            wep:GetOwner():DropWeapon()
            if wep:GetOwner():IsPlayer() then
                wep:GetOwner():ScreenFade(1,Color(128,0,0,64),.5,0)
                wep:GetOwner():ViewPunch(Angle(3,0,0))
            end
        end

        if wep:GetOwner():IsPlayer() then
            wep:GetOwner():SetViewPunchAngles(wep:GetOwner():GetViewPunchAngles() + Angle(1, 0, 3))
        end
    end
end

att.NotForNPC = true