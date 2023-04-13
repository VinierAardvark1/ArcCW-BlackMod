att.PrintName = [[RPG-7 Miniature Nuclear Warhead]]
att.AbbrevName = [[RPG-7 Mini Nuke]]
att.Icon = Material([[entities/acwatt_ammo_rpg7_he.png]])
att.Description = [[Custom-built, scaled-down nuclear warheads adapted for use with the RPG-7. Not as big as an actual nuke, but still much bigger than the standard HE rockets.
Yeah, don't ask how I got this. Not nearly as difficult as the rest of the shit I've gotten you, but definitely the most questionable.

Handle with extreme care.]]
att.Desc_Pros = {
    [[Massively increased blast radius]],
    [[Leaves a damaging Radiation field after detonation]],
}
att.Desc_Cons = {
    [[Hope you can calculate trajectory]],
}
att.Desc_Neutrals = {
    [[What the fuck did you think this was?]],
    [[Aside from a "BlackMod Item!"?]],
}
att.AutoStats = true
att.NotForNPCs = true -- They can't be trusted with this power^2
att.Slot = [[ammo_rpg7_rocket]]

att.Override_ShootEntity = [[arccw_rpg7_warhead]]

att.Mult_Damage = 150
att.Mult_DamageMin = 150
att.Mult_MoveSpeed = 0.75
att.Mult_ShootPitch = 0.5
att.Mult_ReloadTime = 1.75
att.Mult_SightTime = 5
--att.Mult_MuzzleVelocity = 0.5

att.Override_DamageType = DMG_AIRBOAT + DMG_DISSOLVE