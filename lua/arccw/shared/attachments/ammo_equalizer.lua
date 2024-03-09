att.PrintName = "Equalizer™ Rounds"
att.Icon = Material("entities/ammo_equalizer.png", "mips smooth")
att.Description = [[The Equalizer features a fully functioning Jacketed Hollow Point (JHP) in the front followed by a deep penetrating 21 brinell hardcast disk in the back that has been gas checked. On impact, the Equalizer creates two distinct wound channels that group tightly together out to 25 yards.
Basically, you fire a normal hollow point bullet, and a metal disk follows close beside it. Might not be as accurate as a normal bullet, but it'll definitely fuck up whoever you shoot. In a self defense situation, accuracy isn't much of a concern.
"When taking a shot to defend yourself, two is always better than one."]]
att.Desc_Pros = {
    "Fires two projectiles"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"ammo_bullet", "go_ammo", "uc_ammo"}

att.Mult_Damage = 1.25
att.Mult_DamageMin = 0.85
att.Mult_Range = 0.75
att.Mult_AccuracyMOA = 2.5

att.Override_Num = 2
att.Override_Penetration = 5

att.Hook_Compatible = function(wep)
    if wep.Num ~= 1 or (wep.Primary.Ammo ~= "pistol" and wep.Primary.Ammo ~= "357") then return false end
end