att.PrintName = "40mm Marker Grenades"
att.AbbrevName = "Marker"
att.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
att.Description = [[Non-lethal grenades with an empty ceramic shell with an abundance of propelant.
Used for marking locations and points of interest at medium-to-long ranges, the grenade has little drag and paints the impact point with white chalk. The amount of propelant can cause problems, however.]]
att.Desc_Pros = {
    "uc.infiniteammo"
}
att.Desc_Cons = {
    "uc.40mm.nodmg",
    "uc.jam"
}
att.Desc_Neutrals = {
    "blackmod.desc"
}
att.Slot = "uc_40mm"

att.SortOrder = -9001

att.AutoStats = true

att.Override_ShootEntity = "arccw_uc_40mm_marker"

att.ActivateElements = {"40mm_dummy"}

att.Mult_VisualRecoil = 0.75
att.Mult_Recoil = 0.75
att.Mult_ReloadTime = 0.85
att.Mult_MuzzleVelocity = 5
att.Mult_MalfunctionMean = 0.85

att.Override_Malfunction = true
att.Override_InfiniteAmmo = true