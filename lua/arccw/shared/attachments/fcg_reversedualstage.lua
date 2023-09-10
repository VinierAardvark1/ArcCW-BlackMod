att.PrintName = "Reversed Dual Stage Auto"
att.Icon = Material("entities/att/fcg_reversedualstage.png", "smooth mips")
att.Description = [[Two-stage automatic trigger that increased RPM when sighted. The benefit of this system is... unclear, as the developer died in a no-knock raid in NY some time after shipping it, yet before we recieved it.
I can't exactly explain his thought process for making this, as I had little connection with the guy before his passing; all I know is that this was the same guy that gave you JREA, so have some fun with it, yeah? In his honor.]]
att.Desc_Pros = {
    "+ 30% Fire rate when sighted",
}
att.Desc_Cons = {
    "+ 25% Recoil when sighted",
    "+ 20% Horizontal recoil when sighted",
    "+ 10% Visual recoil when sighted",
}
att.Desc_Neutrals = {
    "Has worse performance on non-automatic weapons",
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

att.Hook_ModifyRecoil = function(wep)
    if wep:GetCurrentFiremode().Mode == 2 and  wep:GetState() == ArcCW.STATE_SIGHTS then
        return {Recoil = 1.25, RecoilSide = 1.2, VisualRecoilMult = 1.1}
    end
end

att.Hook_ModifyRPM = function(wep, delay)
    if wep:GetCurrentFiremode().Mode == 2 and  wep:GetState() == ArcCW.STATE_SIGHTS then
        return delay * (0.7 / 1)
    end
end

att.Hook_Compatible = function(wep)
    -- Only available if the weapon already has full auto.
    local has = false
    for i, v in pairs(wep.Firemodes) do
        if !v then continue end
        if v.Mode == 2 then
            has = true
            break
        end
    end

    if !has then return false end
end