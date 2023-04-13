att.PrintName = "Muzzle Brake Model X"
att.Icon = Material("entities/att/muzz_brake_X.png", "mips smooth")
att.Description = [[Modified muzzle device that redirects firing gases to help stabilize recoil, reconstructed with heavier metals to increase said stability and accuracy at the cost of handling and draw time.
I don't know, just seems like something you'd need for some of those heavier caliber rifles. Let me know how it turns out, because the manufacturer claims these were made from solid titanium. They also went out of business shortly after making a few of these, so maybe they weren't lying.]]
att.SortOrder = 1
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
}

att.AutoStats = true
att.Slot = "muzzle"
att.IsMuzzleDevice = true
att.ModelOffset = Vector(0.5, 0, 0)

att.Model = "models/weapons/atts/brake.mdl"

att.Add_BarrelLength = 4
att.Mult_SightTime = 1.15
att.Mult_MoveSpeed = 0.8
att.Mult_DrawTime = 1.25
att.Mult_Range = 1.05
att.Mult_Recoil = 0.8
att.Mult_RecoilSide = 0.7
att.Mult_AccuracyMOA = 0.5