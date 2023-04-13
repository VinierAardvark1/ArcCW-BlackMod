att.PrintName = "Re-engineered Energy Cell Prototype #3279" --pistol
att.AbbrevName = "STAR Re-engineered"
att.Icon = Material("entities/att/tac_synthesis_placeholder_blackmod.png")
att.Description = [["An external e▇rgy system d▇eloped by ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇'s cont▇cted R&D company, S▇▇▇▇▇▇™, as an alt▇▇tive to ▇e t▇di▇▇al m▇▇ine. Unlike m▇az▇▇, th▇ is ▇▇▇d enti▇ly ▇ ▇▇▇▇g ▇▇▇▇▇▇▇▇▇▇▇ ▇▇▇▇▇▇▇▇▇▇-"
From what I've overheard, this fancy mechanism turns your favorite gun to a laser shooter, straight outta some Sci-Fi movie. Only problem is, it'll be hard to kill anything without an external battery; lucky for us-well, for you, your fancy suit of armor or shield or whatever you wanna call it can be used instead.
Did I mention it overheats? Because it does. Very quickly, too, so watch out for that.]]
att.Desc_Pros = {
    "Infinite Ammo",
    "Cannot be a physbullet",
}
att.Desc_Cons = {
    "Draws from Suit Energy for max damage",
    "Requires at least 1 Suit Energy",
    "Reduced overall damage",
    "Susceptible to overheating"
}
att.Desc_Neutrals = {
    "blackmod.desc",
}
att.AutoStats = false
att.Slot = {"ammo_bullet","ammo_shotgun","go_ammo"}

att.Mult_Damage = 0.05
att.Mult_DamageMin = 0.05
att.Override_DamageType = DMG_SHOCK
att.Override_Jamming = true
att.Mult_HeatCapacity = 0.4
att.Mult_FixTime = 0.5
att.Mult_HeatDissipation = 5
att.Mult_HeatDelayTime = 1
att.Mult_ReloadTime = 0.5
att.Override_HeatFix = true
att.Override_HeatLockout = true
att.Override_InfiniteAmmo = true
att.Override_NeverPhysBullet = true
att.Override_CanFireUnderwater = true
att.Override_ChamberSize = 0
att.Override_ClipSize = 80
att.Hook_PostFireBullets = function(wep)
	wep:SetClip1(wep:Clip1() + 1)
end
att.Hook_BulletHit = function(wep, data)

    if wep.Owner:Armor() >= 1 then
        data.damage = data.damage * 5
        wep.Owner:SetArmor(wep.Owner:Armor() - 1)
    end
end
att.NotForNPC = true

att.Hook_Compatible = function(wep)
    if wep.Num ~= 1 or (wep.Primary.Ammo ~= "pistol") then return false end
end