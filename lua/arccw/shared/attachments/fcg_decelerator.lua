att.PrintName = "Decelerator"
att.Icon = Material("entities/att/fcg_decelerator.png")
att.Description = [[Firemode conversion that decreases fire rate the longer you shoot, up to 12 shots. Includes 24-round burst; essentially a reverse of the Accelerator FCG. Due to the unusual stress it places on the firearm, the 24-round burst fire mode will keep firing until all 24 shots are fired or the mag is emptied.
I have no idea why anyone would want this, but someone commisioned it, so now you get to use it.]]
att.Desc_Pros = {
    "Fire rate starts out 50% faster",
}
att.Desc_Cons = {
    "Down to 50% slower fire rate",
    "Runaway Burst",
}
att.Desc_Neutrals = {
    "if you're smart enough...",
    "Blackmod.desc",
}
att.Slot = "fcg"

att.Override_Firemodes = {
    {
        Mode = 2,
        PrintName = "Decelerator"
    },
    {
        Mode = -24,
        RunawayBurst = true,
        PrintName = "24-round burst"
    },
    {
        Mode = 0
    }
}

att.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(24, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 1.5, 0.5)

    return delay / mult
end