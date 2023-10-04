att.PrintName = "Jury-Rigged Explosive Ammo"
att.AbbrevName = "JREA Ammo"
att.Icon = Material("entities/att/ammo_jury_rigged.png")
att.Description = [[A bullet with an explosive charge shoved inside. Based off the old "Devil's Lance" munitions, some crazed bastard reverse engineered one and expanded it's explosive capabilities to every other ammo type he could think of. So all of the ones you happen to use. The added weight of the charge makes these bullets rather heavy, so don't expect your targets to blow up instantaneously.
I don't expect these jury-rigged hunks of excess gunpowder and old brass to be reliable or safe in any way, shape, or form, but you clearly need them for something, so I won't try to stop you. Just don't blame me if you go up in flames one night.]]
att.Desc_Pros = {
    "+ Explosion on hit, dealing 100% extra damage"
}
att.Desc_Cons = {
	"blackmod.phys",
    "blackmod.shitcode",
}
att.Desc_Neutrals = {
    "Doesn't actually destroy the weapon, but renders it completely unusable.",
    "Blast radius is 32 HU",
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"ammo_bullet", "go_ammo"}

att.Mult_ShootPitch = 0.75
att.Mult_ShootVol = 1.4
att.Mult_Penetration = 0
att.Mult_Precision = 0.8
att.Mult_Damage = 0.7

att.Mult_Range = 0.7
att.Mult_Recoil = 1.2
att.Mult_RPM = 0.6
att.Mult_ReloadTime = 1.25
att.Mult_MuzzleVelocity = 0.5

att.Mult_MalfunctionMean = 0.33
att.Mult_MalfunctionVariance = 1
att.Mult_HeatCapacity = 0.05
att.Mult_HeatDissipation = 0.075
att.Mult_HeatDelayTime = 1
att.Mult_FixTime = 99999999999999


att.Override_Num = 1
att.Override_PhysTracerProfile = 1
att.Override_AlwaysPhysBullet = true
att.Override_Jamming = true

att.Health = 4
att.DamageOnReload = 1
att.Breakable = true

att.Hook_AttDestroyed = function(wep, data)
    wep:EmitSound("weapons/arccw/c4/c4_disarm.wav", 75, 100, 1, CHAN_STATIC)
end

att.ActivateElements = {"reducedmag"}

function att.Hook_GetCapacity(wep, cap)
    return math.max(math.floor(cap * (1 - 0.5)), 1)
end

att.Hook_Compatible = function(wep)
    if wep:GetCapacity() == 1 then return false end
end

att.Override_AlwaysPhysBullet = true
att.Mult_PhysBulletGravity = 10
att.Override_PhysBulletImpact = false

att.Hook_PhysBulletHit = function(wep, data)
    if SERVER then
    local delta = data.bullet.Travelled / (data.bullet.Range / ArcCW.HUToM)
    delta = math.Clamp(delta, 0, 1)
    local dmg = Lerp(delta, data.bullet.DamageMax, data.bullet.DamageMin)

    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, 128, dmg)

    local eff = EffectData()
    eff:SetOrigin(data.tr.HitPos)
    eff:SetMagnitude(4)
    eff:SetScale(0.5)
    eff:SetRadius(4)
    util.Effect("Sparks", eff)
    util.Effect("Explosion", eff)
    util.Decal("Scorch", data.tr.HitPos - data.tr.HitNormal, data.tr.HitPos + data.tr.HitNormal, ents.GetAll())
    end
end

att.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
        data.dmgtype = DMG_AIRBOAT
    end
end

att.Hook_Compatible = function(wep)
    if wep.Num ~= 1 or (wep.Primary.Ammo ~= "pistol" and wep.Primary.Ammo ~= "357" and wep.Primary.Ammo ~= "ar2" and wep.Primary.Ammo ~= "smg1") then return false end
end

att.Hook_PostOverheat = function(wep, heat)
    if SERVER then

        local dmg = DamageInfo()
        dmg:SetDamage(math.random(45, 110))
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

att.AddPrefix = "HE "