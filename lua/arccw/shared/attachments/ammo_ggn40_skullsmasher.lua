att.PrintName = "GGN40 Skullsmasher Repurposed Antimatter Rounds"
att.AbbrevName = "Antimatter Rounds"
att.Icon = Material("entities/att/ammo_skullsmasher.png")
att.Description = [[Ammunition rebuilt from blueprints of the legendary GGN40 Skullsmasher Anti-Material Rifle.  it can be shoved into any sniper-type weapon available. Due to the outright anomolous properties of anti-matter, the round produces monstrous recoil and does a rather terrifying amount of damage to whatever you aim it at.

According to the seller's description, the original rifle was "made by Dr Seuss to shoot down Nazi starships in WWI" and was used alongside an "ultra high-power optic" and specialized computer system "to control the bullet via microchip." I don't know how high that bumblefuck was, but a quick test fire shattered my friend's arm and shoulder while also penetrating the target, the bullet trap, the wall behind said bullet trap, the buildings behind the range, and even the goddamn mountain range behind those buildings.

So, maybe he was on to something...]]
att.Desc_Pros = {
    "Discombobulate target",
    "Can pierce the armor of Gredwich tanks",
    "Can probably pierce reality",
}
att.Desc_Cons = {
    "Discombobulate self",
    "Can probably pierce reality",
    "Can't pierce the map or big props, sadge",
}
att.Desc_Neutrals = {
    "SniperPenetratedRound (Sniper) ammo only",
    "One gram of antimatter cost $62,000,000,000,000",
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"ammo_bullet","go_ammo"}

att.Mult_ShootPitch = 0.1
att.Mult_ShootVol = 2
att.Mult_AccuracyMOA = 0
att.Mult_Precision = 0
att.Mult_Recoil = 10
att.Mult_Range = 0
att.Mult_RPM = 0.3
att.Mult_SightTime = 5
att.Mult_SpeedMult = 0.25
att.Mult_SightedSpeedMult = 0.25
att.Mult_CycleTime = 1.5
att.Mult_ReloadTime = 3
att.Mult_MuzzleVelocity = 99999999999
att.Mult_HipDispersion = 0
att.Mult_SightsDispersion = 0

att.Override_Damage = 99999999999
att.Override_DamageMin = 99999999999
att.Override_Penetration = 99999999999
att.Override_PhysTracerProfile = 7
att.Override_DamageType = DMG_DIRECT + DMG_AIRBOAT + DMG_DISSOLVE
att.ActivateElements = {"reducedmag"}

att.Override_NeverPhysBullet = true
att.Override_CanFireUnderwater = true
att.Override_ChamberSize = 0

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
        local v = dir * (wep.Owner:IsOnGround() and -3 or -1) * math.Clamp(math.sqrt(wep.Recoil), 0.5, 3) * 60
        if wep.Owner:IsOnGround() then v = v * 0.25 end
        wep.Owner:SetVelocity( v )
    end
end

att.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
	--Helicopter is apparently hardcoded to only take damage from the fucking airboat gun but can be shot down by RPG??? wat
        data.dmgtype = DMG_AIRBOAT
    end
end

att.NotForNPCs = true --DO NOT.