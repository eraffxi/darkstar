---------------------------------------------
--  Wheel of Impregnability
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");
require("/scripts/zones/Empyreal_Paradox/TextIDs");
---------------------------------------------
function OnMobSkillCheck(target,mob,skill)
    if (mob:hasStatusEffect(EFFECT_PHYSICAL_SHIELD)) then
        return 1;
    end
    mob:showText(mob, PROMATHIA_TEXT + 6);
    return 0;
end;

function OnMobWeaponSkill(target, mob, skill)

	local typeEffect = EFFECT_PHYSICAL_SHIELD;

	mob:addStatusEffect(EFFECT_PHYSICAL_SHIELD, 0, 0, 120);
    mob:AnimationSub(1);
    
    skill:setMsg(MSG_BUFF);
    return EFFECT_PHYSICAL_SHIELD;
end;