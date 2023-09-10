att.PrintName = "Accelerator 2.0"
att.Icon = Material("entities/att/fcg_accelerator_2.png")
att.Description = [[Firemode conversion that increases fire rate the longer you shoot, up to 7 shots. Includes 14-round burst. This version has been upgraded to contain similar features to the reverse-engineered Decelerator model.
Unfortunately, these upgrades are entirely "cosmetic" so to speak, and provide no real advantage over the original model.]]
att.Desc_Pros = {
    "pro.fcg_accelerator",
}
att.Desc_Cons = {
    "con.fcg_accelerator",
}
att.Desc_Neutrals = {
    "Figured someone would enjoy it.",
    "blackmod.desc",
}
att.Slot = "fcg"

att.Override_Firemodes = {
    {
        Mode = 2,
        PrintName = "Accelerator"
    },
    {
        Mode = -14,
        PrintName = "14-round burst"
    },
    {
        Mode = 0
    }
}

att.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(7, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 0.5, 1.25)

    return delay / mult
end