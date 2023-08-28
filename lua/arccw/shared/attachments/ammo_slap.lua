att.PrintName = "Saboted Light Armor Penetrator Cartridges"
att.AbbrevName = "SLAP Rounds"
att.Icon = Material("entities/att/ammo_slap.png")
att.Description = [[Saboted Light Armor Penetrator. Designed to penetrate armor better than standard AP ammo with a polymer sabot using a tungsten penetrator projectile. The projectile itself is a reduced caliber tungsten core wrapped in plastic, ie a .308 SLAP round would be .223 of penetrator core wrapped around .308 plastic sabot. Also designed for use against lightly armored vehicles and aircraft.
Went through a lot of hoops to get ahold of these babies. Not as good as killing as standard FMJ, but I'll be damned if that made them worthless.]]
att.Desc_Pros = {
    "Punches through armor",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"ammo_bullet","go_ammo","uc_ammo"}

att.Mult_Damage = 0.75
att.Mult_DamageMin = 1.1
att.Mult_Penetration = 6
att.Mult_RPM = 0.9
att.Mult_AccuracyMOA = 0.8
att.Mult_Range = 1.15
att.Mult_MuzzleVelocity = 1.15
att.Mult_MalfunctionMean = 0.8

att.Override_Malfunction = true
att.Override_DamageType = DMG_AIRBOAT

att.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
        data.dmgtype = DMG_AIRBOAT
    end
end

function att.Hook_GetCapacity(wep, cap)
    return math.max(math.floor(cap * (1 - 0.15)), 1)
end

att.Hook_Compatible = function(wep)
    if wep:GetCapacity() == 1 then return false end
end

att.Hook_Compatible = function(wep)
    if wep.Num ~= 1 or (wep.Primary.Ammo ~= "pistol" and wep.Primary.Ammo ~= "357" and wep.Primary.Ammo ~= "ar2" and wep.Primary.Ammo ~= "smg1") then return false end
end