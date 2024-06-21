include("ba2/methods.lua")

att.HideIfBlocked = true
att.PrintName = "CRM-409 Biohazard Darts" --Cell Reanimation Method #409
att.AbbrevName = "Plague Dart"
att.Icon = Material("entities/att/ammo_plague_dart.png")
att.Description = [[A specially loaded, low-power round containing a modified dart filled with an unidentified, Category A, Level 4 biological agent, created by some insane military scientist and found in a field beside a drone plated with scrap metal. The volatile compounds in the round require a strong case, which allows for automatic fire to be utilized while the rounds are being fired. Potent, deadly, and relatively fast-acting all in one tight package. Hope you're ready for what this can make.
I'm gonna be honest, this shit sounds incredibly dangerous and is far beyond my forte, and I'm fairly certain it violates the Geneva Convention-yeah yeah, Geneva Suggestion, haha, but seriously; whatever this thing is can spread very easily. I had to get a buddy to call in some favors to figure out what this even was. Handle with care, okay? I don't want to hear another client of mine land in a military prison or die to whatever this thing creates.]]
att.SortOrder = 999
att.Desc_Pros = {
    "Infects unarmored targets.",
}
att.Desc_Cons = {
    "blackmod.phys",
	"Can't infect targets with any armor.",
}
att.Desc_Neutrals = {
	"blackmod.desc",
	"This is also a fucking war crime...",
}
att.AutoStats = true
att.Slot = {"ammo_bullet","go_ammo","uc_ammo"}
att.NotForNPCs = true
att.MagReducer = true
att.ActivateElements = {"reducedmag"}
att.AddSuffix  = " Plagued"


function PlagueDart(wep,data)
    if (data.tr.Entity:IsNPC() or (data.tr.Entity:IsPlayer() and data.tr.Entity:Armor() == 0)) and data.dmg then
        data.dmg:SetDamageCustom(DMG_BIOVIRUS)
        BA2_AddInfection(data.tr.Entity,data.damage * 6)
    end
end

att.Hook_BulletHit = PlagueDart
att.Hook_PhysBulletHit = PlagueDart

att.Mult_AccuracyMOA = 0.8
att.Mult_HipDispersion = 0.8

att.Override_ChamberSize = 0
att.Override_Num = 1
att.Override_Damage = 10
att.Override_DamageMin = 10
att.Override_PhysTracerProfile = 2
att.Override_AlwaysPhysBullet = true

att.Hook_GetCapacity = function(wep, cap)
    return math.Clamp(math.Round(wep.RegularClipSize * 0.1), 1, 5)
end

att.Hook_Compatible = function(wep)
    if not ((wep.RegularClipSize or wep.Primary.ClipSize) <= 15) then return false end
    local tbl = engine.ActiveGamemode() == "terrortown" or {"pistol", "357", "ar2", "SniperPenetratedRound"}
    if not table.HasValue(tbl, wep.Primary.Ammo or "") then return false end
end

att.RequireFlags = {"perk_dart_convert"} --for perk slot