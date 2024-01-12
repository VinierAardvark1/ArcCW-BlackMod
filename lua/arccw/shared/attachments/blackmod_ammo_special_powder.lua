att.PrintName = "Special Powder Mixture, Revision #51320" --5/13/2020, Deep Rock Galactic's Release Date (I have no clue when Special Powder was added lmao)
att.AbbrevName = "Special Powder" --ROCK AND STONE, TO THE BONE.
att.Icon = Material("entities/att/ammo_special_powder.png")
att.Description = [["Less like gunpowder and more like rocketfuel, this mixture gives a hell of a kick that you can use to get places. Leaves the weapon functional, so you can exterminate and escape all in one package. The boys at R&D are quite proud of this; Make sure their work doesn't got to waste."
So, someone else apparently woke up and decided they wanted to make a shotshell that sends YOU flying instead of your target. I wonder if the two are related... Nah. Probably not,  I got the blueprints for these off some crazy old dwarf at a bar down in Gold Coast, Australia. All he wanted was a pint in exchange, oddly. Guess he ran outta money and wanted one more for the road.
Hey, what can I say? I told you I get around.]]
att.Desc_Pros = {
}
att.Desc_Cons = {
    "No enemy Knockback",
    "Firing both barrels at once does not increase knockback",
}
att.Desc_Neutrals = {
    "+/- Self Knockback",
	"blackmod.desc",
}
att.AutoStats = true
att.SortOrder = 999
att.NotForNPCs = true
att.Slot = "ammo_shotgun"

att.HideIfBlocked = true
att.Free = true

att.Hook_Compatible = function(wep)
    return table.HasValue({"arccw_izh43_sawnoff"}, wep.ClassName) --BlackMod IZH-43 version
end

att.Hook_PostFireBullets = function(wep)
    if CLIENT then return end

    local dir = wep.Owner:GetForward()
    if wep.Owner:IsPlayer() and wep.Owner:GetPhysicsObject():IsValid() then
        local v = dir * (-3 or -1) * math.Clamp(math.sqrt(wep.Recoil), 0.5, 3) * 150 --Controls self knockback value
        if GetConVar("arccw_blackmod_nofly"):GetBool() and not wep.Owner:IsOnGround() then v = v * 0.25 end
        wep.Owner:SetVelocity( v )
    end
end

-- att.Hook_BulletHit = function(wep, data)
--     if CLIENT then return end
--     local ent = data.tr.Entity

--     -- Debounce for one tick to block shotgun shots
--     if (ent.ArcCW_AirbenderNext or 0) >= CurTime() then return end
--     ent.ArcCW_AirbenderNext = CurTime() + 0.01

--     local dir = data.tr.Normal:GetNormalized()
--     -- Use full damage on shotguns
--     local damage = math.min(120, wep:GetDamage(data.range))
--     if ent and ent:GetPhysicsObject():IsValid() then
--         if ent:IsNPC() or ent:IsNextBot() then
--             if ent:OnGround() then
--                 dir.z = 0.25
--                 dir = dir:GetNormalized()
--                 ent:SetVelocity( ent:GetVelocity() + dir * damage * 15 )
--             end
--         elseif ent:IsPlayer() then
--             dir.z = 1
--             ent:SetVelocity( dir * (ent:IsOnGround() and 6 or 2) * damage )
--             local r = math.Clamp(damage / 12, 0.5, 10)
--             local punch = AngleRand(-r, r)
--             punch.r = 0
--             ent:SetEyeAngles(ent:EyeAngles() + punch)
--             ent:ViewPunch(punch * 2)
--         else
--             dir.z = 0.25
--             dir = dir:GetNormalized()
--             ent:GetPhysicsObject():AddVelocity(dir * damage * 4)
--         end
--     end

-- end