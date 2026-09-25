local BlitBuffer = require("ffi/blitbuffer")
local ReaderHighlight = require("apps/reader/modules/readerhighlight")
local _ = require("gettext")

-- Whatever you enter in the parentheses will be how the color is listed in the highlight menu. The second value must match a color name in the BlitBuffer.HIGHLIGHT_COLORS table.
ReaderHighlight_orig_colors = ReaderHighlight.highlight_colors
ReaderHighlight.highlight_colors = {
    {_("WTF"), "red"}, 
    {_("Favorite"), "orange"},
    {_("Character"), "yellow"},
    {_("Aww"), "olive"},  -- Added olive color
    {_("Heartbreak"), "gray"},  -- Added gray color
    {_("Spicy"), "green"},
    {_("Funny"), "turquoise"},  -- Added turquoise color
    {_("Hear me out"), "cyan"},
    {_("Sad"), "blue"},
    {_("Deep"), "indigo"},  -- Added indigo color
    {_("Sana all"), "purple"},
    {_("Sweet"), "pink"},  -- Added pink color
}

-- Enter your custom hex colors here. The first value is the color name, the second value is the hex code.
-- WARNING: Removing a color you have used in any books will cause KOReader to crash if you open to that highlight.
BlitBuffer_orig_highlight_colors = BlitBuffer.HIGHLIGHT_COLORS
BlitBuffer.HIGHLIGHT_COLORS = {
    ["red"]    = "#FF7A7A",   -- Updated color from #FF3300
    ["orange"] = "#FFB57D",   -- Updated color from #FF8800
    ["yellow"] = "#FCE762",   -- Updated color from #FFFF33
    ["olive"]  = "#88FF77",   -- Unchanged
    ["gray"]   = "#808080",   -- Updated color from #86B9F7
    ["green"]  = "#88FF77",   -- Updated color from #00AA66
    ["turquoise"]   = "#40E0D0",   -- Updated color from #U00FFE
    ["cyan"]   = "#00FFEE",   -- Unchanged
    ["blue"]   = "#86B9F7",   -- Updated color from #0066FF
    ["indigo"]   = "#4B0082",   -- Updated color from #FFA1D9
    ["purple"] = "#C59CFF",   -- Updated color from #EE00FF
    ["pink"]   = "#FFA1D9",   -- Updated color from #FF00E6
}
