att.PrintName = "Reversed Dual Stage Auto"
att.Icon = Material("entities/att/fcg_reversedualstage.png", "smooth mips")
att.Description = [[Two-stage automatic trigger that increases RPM when sighted. Fires slower than automatic conversion FCGs when not sighted. Sadly, the developer died in a no-knock raid in NY some time after shipping it.
Again, I can't exactly explain his thought process for making this; all I know is that this was the same guy that gave you JREA, so have some fun with it, yeah? In his honor.]]
att.Desc_Pros = {
    "+ Fully automatic fire",
    "+ 50% Fire rate when sighted",
    "- 40% recoil when not sighted",
}
att.Desc_Cons = {
    "+ 20% Recoil when sighted",
    "Pretty unwieldy",
}
att.Desc_Neutrals = {
    "Has better performance on automatic weapons",
    "blackmod.desc",
}
att.Slot = "fcg"
att.InvAtt = "fcg_dualstage"

att.Override_Firemodes = {
    {
        Mode = 2,
        PrintName = "Reverse Dual Stage Automatic"
    },
    {
        Mode = 1,
        PrintName = "Reverse Dual Stage Semi-auto"
    },
    {
        Mode = 0
    }
}

att.AutoStats = true

att.Hook_ModifyRPM = function(wep, delay)
    if wep:GetCurrentFiremode().Mode == 2 and wep:GetState() == ArcCW.STATE_SIGHTS then
        return delay * (0.5 / 1)
    end
end

att.Hook_ModifyRecoil = function(wep)
    if not (wep:GetCurrentFiremode().Mode == 2 and wep:GetState() == ArcCW.STATE_SIGHTS) then
        return {Recoil = 0.6, RecoilSide = 0.85, VisualRecoilMult = 0.9}
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