att.PrintName = "PGM Précision Front Bipod"
att.Icon = Material("entities/att/special_hecateii_bipod.png", "smooth mips")
att.Bipod_Icon = Material("entities/att/special_hecateii_bipod.png")
att.Description = [[Unfold the rifle's front bipod for use, improving recoil control, deployed handling, and precision better than any rail-mounted bipod would.]]
att.Slot = "special_hecateii_bipod"
att.SortOrder = 99999

att.ActivateElements = {"Bipod_Extended"}

att.Bipod = true
att.Mult_BipodRecoil = 0.15
att.Mult_BipodDispersion = 0.05