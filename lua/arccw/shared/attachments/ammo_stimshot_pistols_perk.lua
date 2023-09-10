att.HideIfBlocked = true
att.PrintName = "MASMAR-0 Stimulant Dart - Pistol Load" --Medical Adrenaline Shot Administered at Medium Ranges, Variant-0
att.AbbrevName = "Stim Shot"
att.Icon = Material("entities/att/ammo_stimshot.png")
att.Description = [[A modified, more helpful variant of the bullet-to-dart mechanism used by the infamous CRM-409 "Plague Darts." Rather than infecting targets with a hyper-lethal, hyper-infectious virus, the dart is filled with a small dose of epinephrine, also known as adrenaline, put in a saline solution. The darts are intended to be used at close-to-medium range to get fellow operatives back on their feet in the heat of battle, but a skilled marksman can easily deliver long-ranged healing if required. As this dart is about the size of a pistol bullet and does not produce enough force to cycle a weapon's action, it's common practice to treat all guns as single shot while in use.
These things are pretty fuckin' awesome. Although I've heard that using epinephrine doubles the change of severe brain damage. But what do I know? I'm a black market arms dealer, not a doctor. Hell, I had to look up what epinephrine was when I was given the package.]]
att.SortOrder = 999
att.Desc_Pros = {
    "Support players/NPCs",
    "Can overheal"
}
att.Desc_Cons = {
    "blackmod.phys",
    "Can also heal enemies",
    "Do not aim at the face." --Can still kill if aimed at the head for whatever reason, probably because Rubat™
}
att.Desc_Neutrals = {
    "Only available on pistols as a single-shot cartridge.",
    "blackmod.desc"
}
att.AutoStats = true
att.Slot = {"ammo_bullet", "go_ammo", "uc_ammo"}
att.NotForNPCs = true
att.MagReducer = true
att.ActivateElements = {"reducedmag"}
att.AddSuffix  = " Stim"

att.Mult_AccuracyMOA = 0.75
att.Mult_HipDispersion = 0.75

att.Override_ChamberSize = 0
att.Override_Num = 1
att.Override_Damage = 0
att.Override_DamageMin = 0
att.Override_PhysTracerProfile = 1
att.Override_AlwaysPhysBullet = true

att.Hook_GetCapacity = function(wep, cap)
    return math.Clamp(math.Round(wep.RegularClipSize * 0.1), 1, 5)
end

att.Hook_BulletHit = function(wep, data)
    if !data.tr.Entity then return end

    if data.tr.HitWorld then return end

    data.tr.Entity:SetHealth(math.Clamp(data.tr.Entity:Health() + (25), 0, (data.tr.Entity:GetMaxHealth() * 2.25)))

    ParticleEffect("repair_claw_heal_red", data.tr.Entity:GetPos(), Angle(0,0,0))
end

att.Hook_Compatible = function(wep)
    if not ((wep.RegularClipSize) <= 15) then return false end
    local tbl = engine.ActiveGamemode() == "terrortown" and {"357"} or {"pistol"}
    if not table.HasValue(tbl, wep.Primary.Ammo or "") then return false end
end

att.RequireFlags = {"perk_dart_convert"} --For perk slot