--[[
	Author: TheUnamed (theunamedio)
	License: MIT License
]]

local _G = _G or getfenv(0);
local RoidsCursive = _G.RoidsCursive or {};

SLASH_CURSE1 = "/curse";
SlashCmdList.CURSE = function(msg)
    RoidsCursive.doCurse(msg);
end