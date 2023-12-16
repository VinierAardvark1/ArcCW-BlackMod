att.PrintName = "Cut Birdshot Shells"
att.AbbrevName = "Cut Shells"
att.Icon = Material("entities/att/placeholder_blackmod.png")
att.Description = [[A 12 gauge shell cut in a barely overlapping spiral around the hull, leaving a small portion attached. This simple trick makes the shot more like a slug; When fired, the sliver holding the shell together tears off and sends the wad, shotcup, and said hull bit all flying down the barrel. This can be very dangerous due to pressure spikes from forcing half the shot shell out the weapon. The contents may also spill out into the weapon, causing other malfunctions. Shells are loaded directly into the chamber in non-break action or single-shot weapons to reduce the chance of failures.
Heh, I remember hearing about these. Great Depression-era trick. Used by hunters when they needed a slug but didn't have or couldn't find any. Never heard of anyone using them nowadays, seeing as slugs are easier to come by, but you tell me how well it works, eh?]]
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"ammo_shotgun", "go_ammo", "ud_ammo_shotgun", "uc_ammo"}

att.Mult_Num = 2
att.Mult_RecoilSide = 1.1
att.Mult_Recoil = 1.1
att.Mult_MalfunctionMean = 0.725
att.Mult_PhysBulletMuzzleVelocity = 1.1
att.Mult_CycleTime = 1.05
att.Mult_RPM = 1.1

att.Mult_Range = 1.65
att.Mult_RangeMin = 1.5
att.Mult_AccuracyMOA = 0.015
att.Mult_HipDispersion = 3.25
att.Mult_SightsDispersion = 2

att.Mult_ReloadTime = 1.05
att.Mult_Damage = 0.7
att.Mult_DamageMin = 0.45
att.Mult_Penetration = 0.675

att.Override_ChamberSize = 0

att.Hook_GetCapacity = function(wep, cap)
    return 1
end

-- att.Hook_Compatible = function(wep)
--     if (wep.RegularClipSize or wep.Primary.ClipSize) == 1 then return false end --Find out how to make work on double barrels but not load 2 shells on other shotguns
-- end

att.Hook_Compatible = function(wep)
    if !wep:GetIsShotgun() then return false end
end