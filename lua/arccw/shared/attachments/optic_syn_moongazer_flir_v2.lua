att.PrintName = "MOONGAZER Anti-Thermal Multisight Optic Mk. II"
att.AbbrevName = "MOONGAZER (Multisight) Mk. II"
att.Icon = Material("entities/att/tac_synthesis_placeholder_blackmod.png")
att.Description = [["A high-powered Anti-Thermal scope developed by ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇'s contracted R&D company, SYN▇▇▇▇▇™, that is geared towards long-ranged combat in low-ligh-"
Another find, from the same Georgia warehouse we got that VOID Suppressor from. A thermal scope with anti-thermal guide lights and a laser. These guys just think of everything, don't they? I'll have to write them a letter someday... when I find out who the hell makes this shit. Every document with their name has it blacked out... weird, right? Must be some secret government branch or something. Whatever they are, they make some sweet tech.]]
att.SortOrder = 7
att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
	"+ Anti-Thermal + NVG"
}
att.Desc_Cons = {
    "Visible Laser",
	"- Uses a guide-light for Anti-Thermal"
}
att.Desc_Neutrals = {
    "Guide-light is effective up to 2536 HUs",
	"Guide-light is necessary for models that wouldn't otherwise work with Thermal sights.",
    "blackmod.desc"
}
att.AutoStats = true
att.Slot = {"optic_sniper", "optic"}

att.GivesFlags = {"hugesight"}

att.Model = "models/weapons/atts/farview2.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(-0.025, 11, -1.5),
        Ang = Angle(0, 0, 0),
        Magnification = 2.25,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 12,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
		Thermal = true,
		ThermalScopeColor = Color(0, 0, 255),
		ThermalHighlightColor = Color(0, 255, 255),
        IgnoreExtra = true
    },
	{
        Pos = Vector(-0.025, 11, -1.5),
        Ang = Angle(0, 0, 0),
        Magnification = 2.25,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 12,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
		Thermal = false,
		Brightness = 0.1,
		NVScope = true,
		NVScopeColor = Color(0, 255, 255),
        IgnoreExtra = true
    },
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/syn_sniper_thermal.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 21
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/atts/farview2_hsp.mdl"
att.Colorable = false

att.HolosightMagnification = 3
att.HolosightBlackbox = true
att.HolosightConstDist = 64
att.HolosightMagnificationMin = 3
att.HolosightMagnificationMax = 16

att.Mult_SightTime = 1.8
att.Mult_SightedSpeedMult = 0.6
att.Mult_SpeedMult = 0.6
att.Mult_Sway = 1.4

att.Laser = true
att.LaserStrength = 0.2
att.LaserBone = "holosight"
att.ColorOptionsTable = {Color(0, 255, 255)}

att.Flashlight = true
att.FlashlightFOV = 50
att.FlashlightHFOV = 50
att.FlashlightVFOV = 50
att.FlashlightFarZ = 2536
att.FlashlightNearZ = 2
att.FlashlightAttenuationType = ArcCW.FLASH_ATT_LINEAR -- LINEAR, CONSTANT, QUADRATIC are available
att.FlashlightColor = Color(20, 0, 255)
att.FlashlightTexture = "effects/flashlight/soft"
att.FlashlightBrightness = 1
att.FlashlightBone = "holosight"