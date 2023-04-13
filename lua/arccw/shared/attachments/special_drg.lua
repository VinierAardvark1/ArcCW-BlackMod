att.PrintName = "Lead Storm Kit"
att.Icon = Material("entities/att/placeholder_blackmod.png", "mips smooth")
att.Description = [[A custom-built M134 based off an unknown minigun type. The specialized internals leave the gun with great accuracy at medium-to-long range, but requires a spin up period to properly calibrate itself.
The blueprints for this thing drew inspiration from documents leaked from what was labeled as "An interplanetary mining megacorporation." I still don't get what these guys smoke, but speaking of it, this monster makes smoke better than any smoke machine I've ever seen or built! Yes, I built smoke machines at one point. That's beside the point... Oh, shut up.]]
att.Desc_Pros = {
    "No reloading",
}
att.Desc_Cons = {
    "Blocks Pack-A-Punch",
    "Needs to spin up before firing at full capacity",
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"bo1_perk_minigun"}

att.Override_Damage = 10
att.Override_DamageMin = 5.5
att.Override_HipDispersion = 500
att.Override_MoveDispersion = 0

att.Mult_Recoil = 0.25
att.Mult_RecoilSide = 0.25
att.Mult_RecoilRise = 0.25
att.Mult_RPM = 0.75
att.Mult_DrawTime = 1.5
att.Mult_HolsterTime = 1.1

att.Override_Jamming = true
att.Mult_HeatCapacity = 2
att.Mult_FixTime = 10
att.Mult_HeatDissipation = 25
att.Mult_HeatDelayTime = 1
att.Override_HeatFix = true
att.Override_HeatLockout = true

att.Override_BottomlessClip = true

att.Hook_ShouldNotSight = function(wep)
    return true
end

att.ExcludeFlags = {"papname1", "papname2", "papname3", "papname4"}

att.Override_Firemodes = {
    {
        Mode = 2,
        PrintName = "Spin Up"
    }
}

att.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(26, wep:GetCapacity())

    local delta = wep:GetBurstCount() / max

    local mult = Lerp(delta, 0.5, 2)

    return delay / mult
end