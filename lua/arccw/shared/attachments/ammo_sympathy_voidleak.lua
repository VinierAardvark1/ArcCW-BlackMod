att.PrintName = "Voidleak Rounds"
att.Icon = Material("entities/tac_synthesis_placeholder.png")
att.Description = [["Bull▇s ma▇▇ctu▇d by ▇▇▇▇ire ▇▇▇▇▇ o▇▇i▇▇▇, S▇▇▇y, ▇▇ ▇ntains a ▇▇▇ Void▇▇ that ▇▇▇▇ ▇▇ ▇▇▇."
I... Y'know, I never expected to discover whatever the fuck the void is, but apparently it's a thing. And like most things, somebody went and weaponized it. I'm not entirely sure how to feel about this, to be honest with you. I don't even know if I should be selling it... I mean, I've sold you antimatter rounds, anti-tank armaments, a DIY railgun kit, and so much other weird shit that this wouldn't seem so bad, yeah? There's just something about it that doesn't sit right with me. Here-just take it before I overthink it.]]
att.Desc_Pros = {
    "+Huge damage buff"
}
att.Desc_Cons = {
    "-Forced Physical Bullets","-Enemy is sent to the Void","-Immoral"
}
att.AutoStats = true
att.Slot = {"ammo_bullet","ammo_shotgun","go_ammo"}

att.Mult_Damage = 1.5
att.Mult_DamageMin = 1.5
att.Mult_Penetration = 0
att.Override_DamageType = DMG_DISSOLVE
att.Override_AlwaysPhysBullet = true
att.Override_PhysTracerProfile = 5
att.Override_Num = 1

att.Hook_GetShootSound = 
function(wep, sound)
    return table.Random({"weapons/arccw/glitchshot1.wav","weapons/arccw/glitchshot2.wav","weapons/arccw/glitchshot3.wav","weapons/arccw/glitchshot4.wav"})
end