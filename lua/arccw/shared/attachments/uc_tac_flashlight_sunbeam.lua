att.PrintName = "SUNBEAM Side-Mounted Floodlight"
att.AbbrevName = "SUNBEAM Floodlight"
att.Icon = Material("entities/att/tac_synthesis_placeholder_blackmod.png")
att.Description = [["A high-powered, rail-mounted flashlight developed by by ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇'s contracted R&D company, SYN▇▇▇▇▇™, that is geared towards short-ranged combat in night environments. Being discrete is the least of this flashlight's concerns."
Again, same VHS company... They make so much different shit you almost wonder what they use these for, huh? Nothing to improve on this, really; lightweight, simple to use, needs a good smack every once in a while but that's about it. Could also light up Sicily all the way from New York.
Wait, didn't I say that already?]]
att.Desc_Pros = {
    "uc.light"
}
att.Desc_Cons = {
    "con.light"
}
att.Desc_Neutrals = {
    "Also useful if you use StormFox",
    "blackmod.desc"
}
att.AutoStats = true

att.Slot = {"tac", "tac_pistol"}
att.SortOrder = .9

att.Model = "models/weapons/arccw/atts/uc_flashlight.mdl"
att.ModelOffset = Vector(0.5,0,-0.07)
att.OffsetAng = Angle(0,0,0)
att.ModelScale = Vector(0.75,0.75,0.75)

att.Flashlight = true
att.FlashlightFOV = 40
att.FlashlightFarZ = 5000 -- how far it goes
att.FlashlightNearZ = 1 -- how far away it starts
att.FlashlightAttenuationType = ArcCW.FLASH_ATT_CONSTANT -- LINEAR, CONSTANT, QUADRATIC are available
att.FlashlightColor = Color(255, 255, 255)
att.FlashlightTexture = "effects/flashlight/hard"
att.FlashlightBrightness = 1
att.FlashlightBone = "flashlight"

att.ToggleStats = {
    {
        PrintName = "Off",
        Flashlight = false,
    },
    {
        PrintName = "On",
        Flashlight = true
    },
    {
        PrintName = "Double Power",
        Flashlight = true,
        FlashlightFarZ = 10000,
        FlashlightBrightness = 1.2
    },
    {
        PrintName = "Quintuple Power",
        Flashlight = true,
        FlashlightFarZ = 25000,
        FlashlightBrightness = 1.5
    },
    {
        PrintName = "Across the World",
        Flashlight = true,
        FlashlightFarZ = 50000,
        FlashlightBrightness = 2
    }
}