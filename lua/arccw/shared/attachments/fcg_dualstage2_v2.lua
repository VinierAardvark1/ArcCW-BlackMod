att.PrintName = "Dual Stage Auto 2.0"
att.Icon = Material("entities/att/fcg_dualstage_2.png", "smooth mips")
att.Description = [[Two-stage automatic trigger that reduces RPM when sighted. Fires faster than automatic conversion FCGs when not sighted. This version has been upgraded to contain similar features to the reverse-engineered Reversed Dual Stage Auto model.Unfortunately, these upgrades are entirely "cosmetic"" so to speak, and provide no real advantage over the original model.]]
att.Desc_Pros = {
    "+ Fully automatic fire"
}
att.Desc_Cons = {
    "- 50% Fire rate when sighted",
    "+ 20% Recoil when not sighted"
}
att.Desc_Neutrals = {
    "Has better performance on automatic weapons",
    "Figured someone would enjoy it.",
    "blackmod.desc",
}
att.Slot = "fcg"
att.InvAtt = "fcg_dualstage"

--att.Mult_HipDispersion = 1.15

att.Override_Firemodes = {
    {
        Mode = 2,
        PrintName = "Dual Stage Automatic"
    },
    {
        Mode = 1,
        PrintName = "Dual Stage Semi-Auto"
    },
    {
        Mode = 0
    }
}

att.AutoStats = true

att.Hook_ModifyRPM = function(wep, delay)
    if wep:GetCurrentFiremode().Mode == 2 and wep:GetState() == ArcCW.STATE_SIGHTS then
        return delay * (1 / 0.5)
    end
end

att.Hook_ModifyRecoil = function(wep)
    if not (wep:GetCurrentFiremode().Mode == 2 and wep:GetState() == ArcCW.STATE_SIGHTS) then
        return {Recoil = 1.2, RecoilSide = 1, VisualRecoilMult = 1}
    end
end


att.Hook_Compatible = function(wep)
    -- Only available if the weapon does not have full auto.
    for i, v in pairs(wep.Firemodes) do
        if !v then continue end
        if v.Mode == 2 then
            return false
        end
    end

    return
end