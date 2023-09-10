att.PrintName = "Railgun APFSDS Ammo"
att.AbbrevName = "Railgun Ammo"
att.Icon = Material("entities/att/ammo_railgun.png")
att.Description = [[Custom-tooled armor-piercing fin-stabilized discarding sabot cartridges allow for any sniper-class weapon (with the required conversion kit) to be made into a handheld railgun cannon with pin-point accuracy and heavy damage. Of course, this comes at the cost of recoil, decreased close range damage, handling speeds, and insane amounts of overpenetration. Due to the experimental nature of this entire system, reduced magazines are issued to prevent reliability issues.
I'm glad you found it. Yeah, I have absolutely no idea how any of this even works. Magnets or something, maybe. All I know is that it does and god damn does it work beautifully. Could pick a flea off a dog's back at 500 yards, WITHOUT aiming! Ain't that something?]]
att.SortOrder = 999
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "blackmod.sniperammo",
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = "ammo_bullet"

att.Mult_Damage = 0.5
att.Mult_DamageMin = 100
att.Mult_Penetration = 12
att.Mult_AccuracyMOA = 0
att.Mult_SpeedMult = 1.2
att.Mult_ShootPitch = 0.5
att.Mult_HipDispersion = 0
att.Mult_SightsDispersion = 0
att.Mult_ShootVol = 1.25
att.Mult_Recoil = 2

att.Override_DamageType = DMG_DIRECT + DMG_AIRBOAT

att.Hook_Compatible = function(wep)
    if wep.Num ~= 1 or (wep.Primary.Ammo ~= "SniperPenetratedRound") then return false end
end

att.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
	--Helicopter is apparently hardcoded to only take damage from the fucking airboat gun but can be shot down by RPG??? wat
        data.dmgtype = DMG_AIRBOAT
    end
end

att.MagReducer = true
att.ActivateElements = {"reducedmag"}

att.HideIfBlocked = true
att.RequireFlags = {"fcg_rail_convert"}
att.AddSuffix = "ss"