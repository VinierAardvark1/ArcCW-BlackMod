att.PrintName = "IRONSHOCK Reforged"
att.Icon = Material("entities/att/tac_synthesis_placeholder_blackmod.png")
att.Description = [["An extremely cont▇ver▇▇ rec▇▇able armor system that ▇▇ rejected by ▇▇▇ ▇▇▇ S▇▇▇ the moment it was p▇▇▇ed to them ▇ their co▇▇▇▇ R&D ▇▇▇y,  S▇▇▇▇▇▇™, in ▇▇. ▇▇ reason ▇▇ ▇is was that ▇ utilized w▇▇essly ▇▇ging b▇▇t-t▇s ▇▇ reacted ▇ the iron content f▇n-"
Seems like we've got our hands on something real good this time. So good that our friendly VHS company refused to even fund it. Lucky us, huh? Had my boys reverse engineer this bad boy off an old manual some "vampire sympathists" used, and now it's in your hands. From what I can make out, it uses some fancy techno-bullshit to recharge your suit battery whenever you shoot someone. Not sure how it was originally supposed to handle, but have fun with it.]]
att.Desc_Pros = {
    "Recharges more armor on hit"
}
att.Desc_Cons = {
    "Favored by ▇▇▇▇ ▇rrorists",
    "blackmod.shitcode",
}
att.Desc_Neutrals = {
    "More Damage = More Armor",
	"blackmod.desc",
}
att.Slot = {"ammo_bullet", "go_ammo"}
att.AutoStats = true

att.Mult_Damage = 0.7
att.Mult_DamageMin = 0.7
att.Mult_Penetration = 0.1
att.Mult_Range = 0.5
att.Override_DamageType = DMG_SHOCK
att.InvAtt = "ammo_syn_ironshock_npc"
att.NotForNPC = true
att.Override_PhysTracerProfile = 3

att.Hook_BulletHit = function(wep, data)
    if !data.tr.Entity then return end

    if data.tr.HitWorld then return end

    if data.tr.Entity:Health() <= 0 then return end

    if wep.Owner:Armor() > wep.Owner:GetMaxHealth() then return end

    wep.Owner:SetArmor(math.Clamp(wep.Owner:Armor() + (data.damage * 0.125), 0, wep.Owner:GetMaxHealth())) --Error with SetArmor
end