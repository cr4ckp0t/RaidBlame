-------------------------------------------------------------------------------
-- Raid Blame By Crackpot (US, Illidan)
-------------------------------------------------------------------------------
local random = math.random
local UnitName = _G["UnitName"]
local GetNumGroupMembers = _G["GetNumGroupMembers"]

SLASH_RAIDBLAME1 = "/rb"
SLASH_RAIDBLAME2 = "/raidblame"
SlashCmdList["RAIDBLAME"] = function(msg)
    local blame = UnitName("player")
    while blame == UnitName("player") do
        local test = ("raid%d"):format(random(GetNumGroupMembers()))
        blame = UnitName(test)
    end
    SendChatMessage(("blames %s."):format(blame), "emote")
end