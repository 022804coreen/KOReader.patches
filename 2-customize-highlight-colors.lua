local BlitBuffer = require("ffi/blitbuffer")
local ReaderHighlight = require("apps/reader/modules/readerhighlight")
local _ = require("gettext")

-- Whatever you enter in the parentheses will be how the color is listed in the highlight menu. The second value must match a color name in the BlitBuffer.HIGHLIGHT_COLORS table.
ReaderHighlight_orig_colors = ReaderHighlight.highlight_colors
ReaderHighlight.highlight_colors = {
    {_("WTF"), "red"}, 
    {_("Favorite"), "orange"},
    {_("Character"), "yellow"},
    {_("Spicy"), "green"},
    {_("Sana all"), "purple"}, 
    {_("Funny"), "turquoise"},
    {_("Deep"), "indigo"},
    {_("Sad"), "blue"},
    {_("Hear me out"), "cyan"},
    {_("Aww"), "olive"},
    {_("Heartbreak"), "grey"},
    {_("Kilig"), "pink"},  -- Added pink color
}

-- Enter your custom hex colors here. The first value is the color name, the second value is the hex code.
-- WARNING: Removing a color you have used in any books will cause KOReader to crash if you open to that highlight.
BlitBuffer_orig_highlight_colors = BlitBuffer.HIGHLIGHT_COLORS
BlitBuffer.HIGHLIGHT_COLORS = {
    ["red"]    = "#FF7A7A",   -- Updated color from #FF3300
    ["orange"] = "#FFB57D",   -- Updated color from #FF8800
    ["yellow"] = "#FCE762",   -- Updated color from #FFFF33
    ["green"]  = "#88FF77",   -- Updated color from #00AA66
    ["olive"]  = "#88FF77",   -- Updated color from #FF8800
    ["cyan"]   = "#00FFEE",   -- Unchanged
    ["blue"]   = "#86B9F7",   -- Updated color from #0066FF
    ["purple"] = "#C59CFF",   -- Updated color from #EE00FF
    ["pink"]   = "#FFA1D9",   -- Updated color from #FF00E6
    ["grey"]   = "#86B9F7",   -- Updated color from #0066FF
    ["turquoise"] = "#C59CFF",   -- Updated color from #EE00FF
    ["indigo"]   = "#FFA1D9",   -- Updated color from #FF00E6
}
