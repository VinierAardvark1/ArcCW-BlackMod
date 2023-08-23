include("ba2/methods.lua")

att.Ignore = true --Legacy File
att.PrintName = "Plague Darts" --Shotguns Only
att.Icon = Material("entities/att/ammo_plague_dart.png")
att.Description = [[A specially loaded, low-power round containing a modified dart filled with an unidentified Bio-Hazardous compound, created by some insane military scientist and found in a field beside a drone made from scrap metal.
I'm gonna be honest, this shit sounds incredibly dangerous and is far beyond my forte, and I'm fairly certain it violates the Geneva Convention-yeah yeah, Geneva Suggestion, haha, but seriously; whatever this thing is can spread very easily. Handle with care, okay? I don't want to hear another client of mine land in a military prison or die to whatever this thing creates.]]
att.Desc_Pros = {
    "Infects unarmored targets.",
}
att.Desc_Cons = {
    "Incredibly illegal.",
	"Can't infect targets that have any armor.",
}
att.Desc_Neutrals = {
	"blackmod.desc",
	"This is a fucking war crime...",
}
att.AutoStats = true
att.Slot = {"ammo_shotgun","go_ammo","ud_ammo_shotgun","uc_ammo"}


function PlagueDart(wep,data)
    if (data.tr.Entity:IsNPC() or (data.tr.Entity:IsPlayer() and data.tr.Entity:Armor() == 0)) and data.dmg then
        data.dmg:SetDamageCustom(DMG_BIOVIRUS)
        BA2_AddInfection(data.tr.Entity,data.damage * 4)
    end
end

att.Hook_BulletHit = PlagueDart
att.Hook_PhysBulletHit = PlagueDart

att.Mult_Range = 1.5
att.Mult_Precision = 2
att.Mult_HipDispersion = 0.75
att.Mult_Recoil = 0.5
att.Mult_RecoilSide = 0.5
att.Mult_ShootVol = 0.5
att.Mult_ShootPitch = 2
att.Mult_MuzzleVelocity = 0.7
att.Mult_MalfunctionMean = 0.9

att.Override_Num = 1
att.Override_Damage = 5
att.Override_DamageMin = 20
att.Override_Penetration = 0.5
att.Override_PhysTracerProfile = 2
att.Override_Malfunction = true

att.NotForNPCs = true
att.MagExtender = true
att.ActivateElements = {"extendedmag"}
att.AddPrefix = "Plagued "

att.Hook_Compatible = function(wep)
    if !wep:GetIsShotgun() then return false end
end