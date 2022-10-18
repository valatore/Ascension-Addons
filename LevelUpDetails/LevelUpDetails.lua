print('Level Up Details Loaded');

local addonName = 'LevelUpDetails: '

local function printStats(self, event, ...)
    local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 = ...
    print(addonName .. 'You have leveled up. Congratulations, ' .. UnitName("Player") .. '.')
    print(addonName .. 'The stats you have gained are:')
    print(addonName .. 'HP Gained: ' .. arg2)
    print(addonName .. 'Mana Gained: ' .. arg3)
    print(addonName .. 'Talent Points Gained: ' .. arg4)
    print(addonName .. 'Strength Gained: ' .. arg5)
    print(addonName .. 'Agility Gained: ' .. arg6)
    print(addonName .. 'Stamina Gained: ' .. arg7)
    print(addonName .. 'Intellect Gained: ' .. arg8)
    print(addonName .. 'Spirit Gained: ' .. arg9)
end

local levelUpEventFrame = CreateFrame("Frame");
levelUpEventFrame:RegisterEvent("PLAYER_LEVEL_UP");
levelUpEventFrame:SetScript("OnEvent", printStats)
    