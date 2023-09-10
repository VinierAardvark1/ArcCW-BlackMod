att.PrintName = "Tank Hunter Custom Cartridges"
att.AbbrevName = "Tank Hunter Rounds"
att.Icon = Material("entities/att/ammo_tank_hunter.png")
att.Description = [[A heavily modified and overstuffed cartridge boasting incredibly destructive firepower at the cost of being extremely volatile. This allows the bullet to destroy more heavily armored vehicles and tanks at the same rate as artillery fire, but it's volatility and recoil (among other factors) makes it a poor choice to use for the continuous fire of machine guns. For that reason, it is restricted to being used in anti-material pattern rifles in a single shot fashion as recommended by the "manufacturer".
You have to handle it slowly so you don't die trying to combat... whatever. I don't care. ...I know, I know-look; it annoys me as much as it annoys you, maybe even more, but it's better to stay safe than be sorry, right? Might save a limb or two out there.]]
att.Desc_Pros = {
    "blackmod.gredwich",
}
att.Desc_Cons = {
	"blackmod.phys",
}
att.Desc_Neutrals = {
    "blackmod.sniperammo",
    "Blast radius is 64 HU",
	"Not based on any particular round, I just wanted something viable for heavier tanks that isn't an RPG of sorts",
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"ammo_bullet", "go_ammo", "ammo_pap"}

att.Mult_ShootPitch = 0.25
att.Mult_ShootVol = 1.1
att.Mult_Damage = 1.5
att.Mult_DamageMin = 15
att.Mult_AccuracyMOA = 4
att.Mult_Penetration = 2.5
att.Mult_Recoil = 4
att.Mult_Range = 0.2
att.Mult_RPM = 0.5
att.Mult_CycleTime = 1.25
att.Mult_ReloadTime = 1.25

att.Override_PhysTracerProfile = 1
att.Override_AlwaysPhysBullet = true
att.Override_DamageType = DMG_DIRECT + DMG_AIRBOAT
att.ActivateElements = {"reducedmag"}

att.Hook_Compatible = function(wep)
    if wep.Num ~= 1 or (wep.Primary.Ammo ~= "SniperPenetratedRound") then return false end
end

att.Hook_GetCapacity = function(wep, cap)
    return math.Clamp(math.Round(wep.RegularClipSize * 0.1), 1, 5)
end

att.Hook_PostFireBullets = function(wep)
    if CLIENT then return end

    local dir = wep.Owner:GetForward()
    if wep.Owner:IsPlayer() and wep.Owner:GetPhysicsObject():IsValid() then
        local v = dir * (wep.Owner:IsOnGround() and -3 or -1) * math.Clamp(math.sqrt(wep.Recoil), 0.5, 3) * 60 --Controls self knockback value
        if wep.Owner:IsOnGround() then v = v * 0.25 end
        wep.Owner:SetVelocity( v )
    end
end

att.Hook_BulletHit = function(wep, data)
    if CLIENT then return end
    local ent = data.tr.Entity

    local dir = data.tr.Normal:GetNormalized()
    -- Use full damage on shotguns
    local damage = math.min(120, wep:GetDamage(data.range))
    if ent and ent:GetPhysicsObject():IsValid() then
        if ent:IsNPC() or ent:IsNextBot() then
            if ent:OnGround() then
                dir.z = 0.25
                dir = dir:GetNormalized()
                ent:SetVelocity( ent:GetVelocity() + dir * damage * 15 )
            end
        elseif ent:IsPlayer() then
            dir.z = 1
            ent:SetVelocity( dir * (ent:IsOnGround() and 6 or 2) * damage )
            local r = math.Clamp(damage / 12, 0.5, 10)
            local punch = AngleRand(-r, r)
            punch.r = 0
            ent:SetEyeAngles(ent:EyeAngles() + punch)
            ent:ViewPunch(punch * 2)
        else
            dir.z = 0.25
            dir = dir:GetNormalized()
            ent:GetPhysicsObject():AddVelocity(dir * damage * 4)
        end
    end

    local eff = EffectData()
    eff:SetOrigin(data.tr.HitPos)
    eff:SetMagnitude(2)
    eff:SetScale(0.25)
    eff:SetRadius(2)
    util.Effect("Sparks", eff)
    util.Effect("Explosion", eff)

    local ent = data.tr.Entity
	ent:Ignite(math.random(60, 180))
    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, 64, wep:GetDamage(data.range))
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
        data.dmgtype = DMG_AIRBOAT
    end
end