local richtext = require "richtext.richtext"

local M = {}
-- letterTime = no , richText = "string", font = "string", options = {} OR LOOK AT API
M.default = { align = richtext.ALIGN_CENTER,
              width = window.get_size() - 2,
              position = vmath.vector3(window.get_size() / 2 + 10, -25, 0),
              -- parent = gui.get_node("textZone") // In gui_script
            }
M.scene1 = { }
M.scene1[1] = { letterTime = 0.3, richText = "...", font = "scene1", options = M.default }
M.scene1[2] = { letterTime = 0.3, richText = "...", font = "scene1", options = M.default }
M.scene1[3] = { letterTime = PRINTSPEEDNORMAL, richText = "Hey there !!", font = "scene1", options = M.default }
M.scene1[4] = { letterTime = 0.3, richText = "...", font = "scene1", options = M.default }
M.scene1[5] = { letterTime = PRINTSPEEDNORMAL, richText = "I can't belive how much time I spend trying to figure out how to start.", font = "scene1", options = M.default }
M.scene1[6] = { letterTime = 0.3, richText = "...", font = "scene1", options = M.default }
M.scene1[7] = { letterTime = 0.3, richText = "...", font = "scene1", options = M.default }
M.scene1[8] = { letterTime = PRINTSPEEDNORMAL, richText = "Or trying to explain why none of them fit to", font = "scene1", options = M.default }
M.scene1[9] = { letterTime = PRINTSPEEDNORMAL, richText = "to", font = "scene1", options = M.default }
M.scene1[10] = { letterTime = PRINTSPEEDNORMAL, richText = "this thing I'm doing.", font = "scene1", options = M.default }
M.scene1[11] = { letterTime = PRINTSPEEDNORMAL, richText = "<color=red>I should have used telepathy, speaking is hard.</color>", font = "scene1", options = M.default }
M.scene1[12] = { letterTime = PRINTSPEEDNORMAL, richText = "<color=red>Writing is harder.</color>", font = "scene1", options = M.default }
M.scene1[13] = { letterTime = PRINTSPEEDNORMAL, richText = "But anyway.<br/> Let's start.", font = "scene1", options = M.default }

M.scene2 = { }
M.scene2[1] = { letterTime = PRINTSPEEDNORMAL, richText = "You were born, your lungs burn whit the first breath you take.", font = "scene1", options = M.default }
M.scene2[2] = { letterTime = PRINTSPEEDNORMAL, richText = "You want to tell others that you are hurt.<br/> You are not sure about the reason", font = "scene1", options = M.default }
M.scene2[3] = { letterTime = PRINTSPEEDNORMAL, richText = "maybe it's because that it's to only thing you know", font = "scene1", options = M.default }
M.scene2[4] = { letterTime = PRINTSPEEDNORMAL, richText = "but you decide to cry.", font = "scene1", options = M.default }
M.scene2[5] = { letterTime = PRINTSPEEDNORMAL, richText = "you take a deep breath, open your mouth", font = "scene1", options = M.default }
M.scene2[6] = { letterTime =0.3, richText = "...", font = "scene1", options = M.default }
M.scene2[7] = { letterTime = PRINTSPEEDNORMAL, richText = "Then nothing happens,<br/> you can't let go the air that you take just a moment ago.", font = "scene1", options = M.default }
M.scene2[8] = { letterTime = PRINTSPEEDNORMAL, richText = "You hear a soft voice whispering to your ear", font = "scene1", options = M.default }
M.scene2[9] = { letterTime = PRINTSPEEDNORMAL, richText = "<color=blue>If you cry know, you can't stop.<br/> It makes you carry that burden others call life.</color>", font = "scene1", options = M.default }
-- stop
M.scene2.stop = { }
M.scene2.stop[10] = { letterTime = PRINTSPEEDNORMAL, richText = "stop deneme", font = "scene1", options = M.default }
-- continue
M.scene2.continue = { }
M.scene2.continue[10] = { letterTime = PRINTSPEEDNORMAL, richText = "continue deneme", font = "scene1", options = M.default }

return M