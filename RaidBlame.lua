-------------------------------------------------------------------------------
-- Raid Blame By Crackpot (US, Illidan)
-------------------------------------------------------------------------------
local random = math.random
local UnitName = _G["UnitName"]
local GetNumGroupMembers = _G["GetNumGroupMembers"]

SLASH_RAIDBLAME1 = "/rb"
SLASH_RAIDBLAME2 = "/raidblame"
SlashCmdList["RAIDBLAME"] = function(msg) SendChatMessage(("Blame randomly assigned to %s."):format(UnitName(("raid%d"):format(random(GetNumGroupMembers())))), "INSTANCE_CHAT") end