att.PrintName = "Raufoss Mk 211 Munitions"
att.AbbrevName = "Raufoss Ammo"
att.Icon = Material("entities/att/ammo_raufoss.png")
att.Description = [[A 12.7x99mm NATO/.50 BMG caliber cartridge boasting an armor-piercing (tungsten core), an explosive, and an incendiary component, also known as ''HEIAP'', this round is capable of penetrating lightly armored targets such as helicopters, aircraft, and lightly armored or unarmored vehicles, and is capable of igniting jet fuel. A popular choice for the Barrett M82 and other .50 BMG rifles and machine guns. It also boasts the same destructive power as the much larger 20mm round against such targets and can penetrate 11mm of RHA at 45 degrees from a range of 1000 meters or 1093.61 yards.
I'd say to not use it against infantry, but I know you will.
It's okay, I've done it too. Just watch for MP; if they catch you , you never heard'a me. OK?]]
att.Desc_Pros = {
    "Can pierce the armor of Gredwich tanks",
}
att.Desc_Cons = {
	"Forced Physical Bullets",
}
att.Desc_Neutrals = {
    "SniperPenetratedRound (Sniper) ammo only",
    "Blast radius is 24 HU",
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"ammo_bullet","go_ammo"}

att.Mult_ShootPitch = 0.8
att.Mult_ShootVol = 1.05
att.Mult_Damage = 1.15 --1.25
att.Mult_DamageMin = 3.33 --5
att.Mult_AccuracyMOA = 0.5
att.Mult_Precision = 0.5
att.Mult_Penetration = 1.25
att.Mult_Recoil = 1.5
att.Mult_Range = 0.5

att.Override_PhysTracerProfile = 1
att.Override_AlwaysPhysBullet = true
att.Override_DamageType = DMG_BURN + DMG_AIRBOAT --AIRBOAT damage does not work but MISSILEDEFENSE, BURN, DIRECT, and BLAST do; BURN ignites target, Direct does more damage than BLAST vs GD tanks, and MISSILEDEFENSE...???

att.Hook_Compatible = function(wep)
    if wep.Num ~= 1 or (wep.Primary.Ammo ~= "SniperPenetratedRound") then return false end
end

att.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, 24, wep:GetDamage(data.range))
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
	--Helicopter is apparently hardcoded to only take damage from the fucking airboat gun but can be shot down by RPG??? wat
        data.dmgtype = DMG_AIRBOAT
    end
end

att.Hook_PhysBulletHit = function(wep, data)
    if SERVER then
    local delta = data.bullet.Travelled / (data.bullet.Range / ArcCW.HUToM)
    delta = math.Clamp(delta, 0, 1)
    local dmg = Lerp(delta, data.bullet.DamageMax, data.bullet.DamageMin)

    local eff = EffectData()
    eff:SetOrigin(data.tr.HitPos)
    eff:SetMagnitude(2)
    eff:SetScale(0.25)
    eff:SetRadius(2)
    util.Effect("Sparks", eff)
    util.Effect("Explosion", eff)
    util.Decal("Scorch", data.tr.HitPos - data.tr.HitNormal, data.tr.HitPos + data.tr.HitNormal, ents.GetAll())
    end
end