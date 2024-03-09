att.PrintName = "Experimental Taser Rounds"
att.AbbrevName = "Taser Bullets"
att.Icon = Material("entities/att/ammo_taser.png")
att.Description = [[Non-Lethal rounds developed to incapacitate high-value targets rather than eliminate them. Unlike a traditional taser, these rounds are powered by a battery in the "bullet" itself rather than the firearm, meaning it's range isn't restricted by wires. However, the battery is quite small, so sniping enemies with these isn't possible.
Unfortunately, the research my colleagues gathered from the company these were made in was... incredibly limited, so as far as I know it can be dangerous to place these side-by-side, considering they have exposed wiring running along the sides. For your safety, I recommend putting a single bullet in your mag, or directly into the chamber if you're able to.]]
att.Desc_Pros = {
    "Big damage buff",
}
att.Desc_Cons = {
	"Might be overpowered",
}
att.Desc_Neutrals = {
	-- "Only works with pistols", -- What's the point of this line if you can only see this attachment on pistols? lmao
	"blackmod.desc",
}
att.AutoStats = true
att.NotForNPCs = true
att.Slot = {"ammo_bullet", "go_ammo"}

att.Mult_ShootPitch = 2
att.Mult_ShootVol = 0.5
att.Mult_Damage = 20
att.Mult_DamageMin = 20
att.Mult_Recoil = 0.25
att.Mult_Penetration = 0
att.Mult_ReloadTime = 1.1
att.Mult_AccuracyMOA = 0

att.Override_ChamberSize = 0
att.Override_DamageType = DMG_SHOCK

att.Health = 1
att.DamageOnShoot = 1
att.Breakable = true

att.Hook_AttDestroyed = function(wep, data)
    wep:EmitSound("weapons/arccw/c4/c4_disarm.wav", 75, 100, 1, CHAN_STATIC)
end

att.MagReducer = true
att.ActivateElements = {"reducedmag"}
Override_AlwaysPhysBullet = true
att.Mult_MuzzleVelocity = 5000

att.Hook_GetCapacity = function(wep, cap)
    return 1
end

att.Hook_Compatible = function(wep)
    if (wep.RegularClipSize or wep.Primary.ClipSize) == 1 then return false end
end

att.Hook_Compatible = function(wep)
    if wep.Num ~= 1 or (wep.Primary.Ammo ~= "pistol" and wep.Primary.Ammo ~= "357") then return false end
end