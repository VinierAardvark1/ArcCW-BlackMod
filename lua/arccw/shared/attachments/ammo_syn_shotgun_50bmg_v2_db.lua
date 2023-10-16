att.PrintName = ".50 BMG shoved into a shotgun. Why?"
att.AbbrevName = ".50 BMG Cartridge"
att.Icon = Material("entities/att/tac_synthesis_placeholder_blackmod.png")
att.Description = [["If God didn't want me to stick a .50 BMG round into a 12 gauge shotgun, He wouldn't have made the diameters match."
Yeah, I know the joke. I personally think it's a stupid and moronic idea, but if you're so sure it'll work, here. Try it out and tell me how it goes. No, seriously, go ahead. I'll be watching-Don't ask how.]]
att.Desc_Pros = {
}
att.Desc_Cons = {
    "You are an absolute madman.",
    "Or maybe just stupid",
    "blackmod.danger1",
}
att.Desc_Neutrals = {
	"blackmod.sniperammo",
    "Do not attempt in real life",
    "Does not change ejected/reloaded shell model",
    "blackmod.danger2",
    "blackmod.desc",
}
att.AutoStats = true
att.Slot = {"ammo_shotgun", "go_ammo", "ud_ammo_shotgun", "uc_ammo"}

att.NotForNPC = true

att.AttachSound = "attachments/areyouretarded.wav"

att.Mult_Damage = 4.2
att.Mult_DamageMin = 3.25
att.Mult_Penetration = 4
att.Mult_ReloadTime = 1.25
att.Mult_AccuracyMOA = 0.6
att.Mult_ShootVol = 1.25
att.Mult_ShootPitch = 0.75
att.Mult_Recoil = 2.5
att.Mult_MalfunctionMean = 0.1
att.Mult_MalfunctionVariance = 1
att.Mult_Sway = 1.5
att.Mult_HeatCapacity = 0.025
att.Mult_HeatDissipation = 0.025
att.Mult_HeatDelayTime = 1
att.Mult_FixTime = 99999999999999

att.Override_Jamming = true
att.Override_HeatLockout = true
att.Override_HeatFix = false

att.Override_Num = 1
att.Override_ChamberSize = 0
att.Override_Malfunction = true

att.Override_Ammo = "SniperPenetratedRound"

-- att.Hook_GetCapacity = function(wep, cap)
--     return 1
-- end

-- att.Hook_Compatible = function(wep)
--     if (wep.RegularClipSize or wep.Primary.ClipSize) == 1 then return false end  -- Find out how to make work on double barrels but not load 2 shells on other shotguns
-- end

-- att.Hook_Compatible = function(wep)
--     if !wep:GetIsShotgun() then return false end
-- end

att.Hook_Compatible = function(wep)
    return table.HasValue({"arccw_ur_db", "arccw_izh43_sawnoff", "arccw_db", "arccw_db_sawnoff"}, wep.ClassName) -- Simple yet semi-costly workaround, hopefully find a better way later
end

att.Hook_PostOverheat = function(wep, heat)
    if SERVER then

        local dmg = DamageInfo()
        dmg:SetDamage(math.random(45, 110))
        dmg:SetDamageType(DMG_BLAST)
        dmg:SetInflictor(wep)
        dmg:SetAttacker(wep:GetOwner())
        wep:GetOwner():TakeDamageInfo(dmg)

        local eff = EffectData()
        eff:SetMagnitude(1)
        eff:SetScale(0.25)
        eff:SetRadius(2)
        util.Effect("Sparks", eff)
        util.Effect("Explosion", eff)

        if (wep:GetOwner():IsPlayer()) then
            wep:GetOwner():DropWeapon()
            if wep:GetOwner():IsPlayer() then
                wep:GetOwner():ScreenFade(1,Color(128,0,0,64),.5,0)
                wep:GetOwner():ViewPunch(Angle(3,0,0))
            end
        end

        if wep:GetOwner():IsPlayer() then
            wep:GetOwner():SetViewPunchAngles(wep:GetOwner():GetViewPunchAngles() + Angle(1, 0, 3))
        end
    end
end

att.NotForNPC = true