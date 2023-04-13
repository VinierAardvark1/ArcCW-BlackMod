att.PrintName = "VOID Suppressor Mk. II"
att.Icon = Material("entities/att/tac_synthesis_placeholder_blackmod.png")
att.Description = [[""A single-shot suppressor developed by ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇'s contracted R&D company, SYN▇▇▇▇▇™, that is ab-"
Another "gift" from the friendly VHS company. Scavenged this out a warehouse somewhere in Georgia. Supposedly lets you shoot through a "Void" to basically teleport one bullet right in front of the target. I say 'one bullet' because it's designed to self-destruct after one shot; nothing I can do about that, sadly. Found a way to further amp up the damage it can do, though.
Don't miss.]]
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.obstruction",
    "-Single Shot",
    "-Voidleaks are scary"
}
att.Desc_Neutrals = {
    "Best used on Snipers for assassination shots",
    "blackmod.desc"
}
att.AutoStats = true
att.NotForNPCs = true
att.Slot = "muzzle"

att.Model = "models/weapons/atts/supp_heavy.mdl"

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.IsMuzzleDevice = true

att.Override_Firemodes = {
    {
        Mode = 1,
    },
}

att.Mult_RPM = 2
att.Mult_DrawTime = 2
att.Mult_SightTime = 2
att.Mult_Recoil = 0.25
att.Mult_HipDispersion = 0
att.Mult_AccuracyMOA = 0
att.Mult_MoveDispersion = 0.50
att.Mult_SightedMoveSpeed = 0.8
att.Mult_Damage = 5
att.Mult_DamageMin = 5
att.Mult_Penetration = 5
att.Mult_Range = 500
att.Mult_ShootVol = 0

att.Add_BarrelLength = 24

att.Health = 1
att.DamageOnShoot = 1
att.Breakable = true

att.Hook_GetShootSound = 
function(wep, sound)
    return "attachments/thumper_hit.wav"
end

att.Hook_AttDestroyed = function(wep, data)
    wep:EmitSound("attachments/thumper_top.wav", 75, 100, 1, CHAN_STATIC)
end