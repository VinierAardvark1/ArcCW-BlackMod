att.PrintName = "HDS Flip Sight w/ OKP-7"
att.AbbrevName = "HDS Flip"
att.Icon = Material("entities/att/optic_hds_okp7_glaz.png")
att.Description = [[Magnified medium-range red-dot with a Thermal Feedback System which can outline long-range marks even through smoke for easier shooting.
Managed to buy this piece off a Spetsnaz sniper. Says it helps him out in the field when visibility is low. I think the lock to it got damaged in shipping, so you can't flip it up and down anymore. Still works like a charm, managed to use it for some deer hunting before I put it up for sale.]]
att.SortOrder = 999
att.Desc_Pros = {
	"autostat.holosight",
    "autostat.zoom",
    "autostat.thermal",
}
att.Desc_Cons = {
	"Can't actually flip the sight down",
}
att.Desc_Neutrals = {
    "Has a hidden feature...",
	"blackmod.desc",
}

att.AutoStats = true
att.Slot = "bo2_svu_scope"
att.ModelOffset = Vector(-2.4, 0, -2.43)

att.Model = "models/weapons/atts/mw2r_glaz_okp7.mdl"

att.Mult_SightTime = 1.35
att.Mult_SightedSpeedMult = 2

att.AdditionalSights = {
    {
        Pos = Vector(0, 8, 0.98),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
		ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 2,
        ZoomSound = "arccw_go/fiveseven/fiveseven_slideback.wav",
        Thermal = true,
		ThermalNoCC = false,
        ThermalFullColor = true,
        ThermalScopeSimple = false,
        ThermalScopeColor = Color(0, 255, 255),
        ThermalHighlightColor = Color(255, 255, 0),
        HolosightData = {
            Holosight = true,
            ScrollFunc = ArcCW.SCROLL_ZOOM,
			HolosightMagnification = 1.1,
            HolosightMagnificationMin = 1.5,
            HolosightMagnificationMax = 6,
            HolosightReticle = Material("hud/scopes/optic_hds_okp7_glaz.png"),
            HolosightNoFlare = true,
            HolosightSize = 25,
            HolosightBlackbox = true,
            Colorable = false,
            HolosightPiece = "models/weapons/atts/mw2r_glaz_okp7_hsp.mdl"
        },
		IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 8, 0.98),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
		ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 2,
        ZoomSound = "arccw_go/fiveseven/fiveseven_slideback.wav",
        Thermal = true,
		ThermalNoCC = false,
        ThermalFullColor = true,
        ThermalScopeSimple = false,
        ThermalScopeColor = Color(255, 0, 0),
        ThermalHighlightColor = Color(0, 255, 0),
        HolosightData = {
            Holosight = true,
			HolosightMagnification = 1.1,
            HolosightMagnificationMin = 1.5,
            HolosightMagnificationMax = 6,
            HolosightReticle = Material("hud/scopes/optic_hds_okp7_glaz_beta.png"),
            HolosightNoFlare = true,
            HolosightSize = 25,
            HolosightBlackbox = true,
            Colorable = false,
            HolosightPiece = "models/weapons/atts/mw2r_glaz_okp7_hsp.mdl"
        },
		IgnoreExtra = true,
    },
}

att.Holosight = true
att.HolosightNoFlare = true
att.HolosightReticle = Material("hud/scopes/optic_hds_okp7_glaz.png")
att.HolosightSize = 20
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/atts/mw2r_glaz_okp7_hsp.mdl"
att.HolosightMagnification = 1.1
att.HolosightMagnificationMin = 1.5
att.HolosightMagnificationMax = 6
att.HolosightConstDist = 42
att.Colorable = false