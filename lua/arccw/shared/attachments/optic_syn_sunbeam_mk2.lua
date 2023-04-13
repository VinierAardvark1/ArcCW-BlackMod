att.PrintName = "SUNBEAM High-Powered Spotlight Optic Mk. II"
att.AbbrevName = "SUNBEAM (SPOTLIGHT) Mk. II"
att.Icon = Material("entities/att/tac_synthesis_placeholder_blackmod.png")
att.Description = [["A high-powered scope with an integral spotlight developed by ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇'s contracted R&D company, SYN▇▇▇▇▇™, that is geared towards long-ranged combat in night environments. This is the ▇▇▇▇▇ equivalent of the ▇▇▇▇▇, as being discrete is-"
This came from the same VHS company that "gave" us the Proto-Sear. Buddy of mine saw and decided to improve it. New chassis, lighter internals, better features. Configurable, too; normal power, double power, 5x power, and the last one could light up New York all the way from Sicily. All at the cost of being slightly heavier than the original, that is.
Nothing you can't manage, right?]]
att.SortOrder = 7
att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
    "Can be toggled",
	"Bright spotlight",
}
att.Desc_Cons = {
    "Bright spotlight",
    "May cause FPS drops",
	"Do with that as you will."
}
att.Desc_Neutrals = {
    "Actually useful if you use StormFox",
    "blackmod.desc"
}
att.AutoStats = true
att.Slot = "optic"

att.GivesFlags = {"hugesight"}

att.Model = "models/weapons/atts/uc_nvis.mdl" --"models/weapons/arccw/atts/farview2.mdl"
att.ModelOffset = Vector(0, 0, 0.18)

att.AdditionalSights = {
    {
        Pos = Vector(-0.035, 6, -1.25), --X, 7, Z
        Ang = Angle(0, 0, 0),
        Magnification = 2.25,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 6,
        ZoomSound = "weapons/atts/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    },
    {
        Pos = Vector(-1, 10, -1.25),
        Ang = Angle(0, 0, -40),
        Magnification = 1.5,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 6,
        ZoomSound = "weapons/atts/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/syn_sniper_sunbeam_mk2.png")
att.HolosightNoFlare = true
att.HolosightSize = 13 --13
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/atts/uc_nvis_hsp.mdl"  --"models/weapons/arccw/atts/farview2_hsp.mdl"
att.Colorable = false

att.HolosightMagnification = 3
att.HolosightBlackbox = true
att.HolosightConstDist = 64
att.HolosightMagnificationMin = 3
att.HolosightMagnificationMax = 12

att.Mult_SightTime = 1.4
att.Mult_SightedSpeedMult = 0.8
att.Mult_SpeedMult = 0.8
att.Mult_Sway = 1.2

att.Flashlight = true
att.FlashlightFOV = 10
att.FlashlightFarZ = 5000 -- how far it goes
att.FlashlightNearZ = 2 -- how far away it starts
att.FlashlightAttenuationType = ArcCW.FLASH_ATT_CONSTANT -- LINEAR, CONSTANT, QUADRATIC are available
att.FlashlightColor = Color(255, 255, 255)
att.FlashlightTexture = "effects/flashlight/hard"
att.FlashlightBrightness = 1
att.FlashlightBone = "holosight"

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
        FlashlightBrightness = 2
    },
    {
        PrintName = "Quintuple Power",
        Flashlight = true,
        FlashlightFarZ = 25000,
        FlashlightBrightness = 3
    },
    {
        PrintName = "Across the World",
        Flashlight = true,
        FlashlightFarZ = 50000,
        FlashlightBrightness = 4
    }
}