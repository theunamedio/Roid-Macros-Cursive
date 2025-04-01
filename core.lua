--[[
	Author: TheUnamed (theunamedio)
	License: MIT License
]]

local _G = _G or getfenv(0);
local Roids = _G.Roids or {};
local RoidsCursive = _G.RoidsCursive or {};

_G.RoidsCursive = RoidsCursive;

-- Attempts to curse a target via cursive 
-- message: The player's macro text
function RoidsCursive.doCurse(message)
    local handled = false;
    local trimmedMessage = Roids.Trim(message);
    
    for key, value in pairs(Roids.splitString(trimmedMessage, ";%s*")) do
        if Roids.DoWithConditionals(value, nil, Roids.FixEmptyTarget, true, RoidsCursive.doCurse0) then
            handled = true; -- we parsed at least one command
            break;
        end
    end
    return handled;
end

-- Curses the target with the given curse
-- curseName: The curse to be casted
function RoidsCursive.doCurse0(curseName)
	local trimmedCurseName = RoidsCursive.trimQuotes(curseName);
    Cursive:Curse(trimmedCurseName, "target", {});
end

-- Trims the given string of quotes
-- theString: The string to be trimmed
function RoidsCursive.trimQuotes(theString)
	if string.sub(theString, 1, 1) == "\"" and string.sub(theString, -1) == "\"" then
		return string.sub(theString, 2, -2);
    else
        return theString;
	end
end