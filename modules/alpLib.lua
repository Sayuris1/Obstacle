--[[
    PrintByLetter
        prints each letter in "letterTime"
		richTextTable { letterTime, "richText", font, { options } } --> arguments to richtext.create call
		textArrow gui.get_node --> node to flash when type ends
	return words metrics ---> richtext.create

	DeleteRichtext
		Deletes all nodes crated by richtext.create
		word --> table from richtext.create

	hashed
		adds to hashedTable, if already hashed simply return
		string --> string to hash
	retrun hashed string
]]

--[[
    _G LIST
		PRINTSPEEDNORMAL = 0.05
		HEALRANDOM --> bullet heal random feel
]]

PRINTSPEEDNORMAL = 0.04

local richtext = require "richtext.richtext"

local M = {}

-- Look to : PrintByLetter
M.jumpToEnd = false;

-- 0 --> typing
-- 1 --> finished
M.typeState = 0

-- prints each letter in "letterTime"
-- richTextTable { letterTime, "richText", font, { options } } --> arguments to richtext.create call
-- textArrow gui.get_node --> node to flash when type ends
M.PrintByLetter = function ( richTextTable, textArrow )
	-- Default Settings *************************
	local letterIndex = 0
	local _timer
	M.typeState = 0
	gui.animate( textArrow, "color.w", 0, gui.EASING_LINEAR, 0.3, 0, function () end )
	M.jumpToEnd = false -- Reset
	-- *******************************************

	local words, metrics = richtext.create( richTextTable.richText, richTextTable.font, richTextTable.options )
    richtext.truncate ( words, 0 ) -- make the text disappear before timer starts

	local letterByLetter = function ( self, handle, time_elapsed )
		if not M.jumpToEnd then
			letterIndex = letterIndex + 1
		else
			letterIndex = richtext.length ( words )
		end
		richtext.truncate ( words, letterIndex, { words = false } )
		if letterIndex == richtext.length ( words ) then
			gui.animate( textArrow, "color.w", 1, gui.EASING_LINEAR, 0.3, 0, function () end )
			M.typeState = 1
			timer.cancel ( M._timer )
			M._timer = nil
		end
	end

    M._timer = timer.delay( richTextTable.letterTime, true, letterByLetter )
    return words, metrics
end

-- Deletes all nodes crated by richtext.create
-- word --> table from richtext.create
M.DeleteRichtext = function ( words )
	for index, value in ipairs(words) do
		-- value is a table ( look at richtext API )
		gui.delete_node(value.node)
	end
end

M.hashedTable = {}

-- Adds to hashedTable, if already hashed simply return
-- string --> string to hash
M.hashed = function ( string )
	if M.hashedTable[string] == nil then
		M.hashedTable[string] = hash(string)
	end
	return M.hashedTable[string]
end

return M