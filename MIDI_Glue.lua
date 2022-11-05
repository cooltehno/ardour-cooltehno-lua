-- ardour { ["type"] = "Snippet", name = "" }
-- function factory () return function () -- -- end end
ardour {
    ["type"]    = "EditorAction",
    name        = "MIDI Glue",
    license     = "MIT",
    author      = "cooltehno",
    description = "consolidate all regions with the selected one"
}

function factory () return function ()

        Editor:access_action("Region","set-selection-from-region")
	Editor:access_action("Editor", "editor-consolidate")
	Editor:access_action("MouseMode", "set-mouse-mode-object")

end end

function icon (params) return function (ctx, width, height, fg)
	local wh = math.min (width, height) * .5
	local ar = wh * .2

	ctx:set_line_width (1)
	function stroke_outline (c)
		ctx:set_source_rgba (0, 0, 0, 1)
		ctx:stroke_preserve ()
		ctx:set_source_rgba (.7, c, c, 1)
		ctx:fill ()
	end

	ctx:translate (math.floor (width * .5 - wh), math.floor (height * .5 - wh))
	ctx:rectangle (wh - wh * .6, wh - .7 * wh, wh * 1.2, .5 * wh)
	stroke_outline (.1)

	ctx:rectangle (wh - wh * .6, wh + .1 * wh, wh * 1.2, .5 * wh)
	stroke_outline (.4)

	-- arrow
	ctx:set_source_rgba (1, 1, 1, 1)
	ctx:set_line_width (ar * .7)

	ctx:move_to (wh, wh - .5 * wh)
	ctx:rel_line_to (0, wh)
	ctx:stroke ()

	ctx:move_to (wh, wh + .5 * wh)
	ctx:rel_line_to (-ar, -ar)
	ctx:rel_line_to (2 * ar, 0)
	ctx:close_path ()
	ctx:stroke ()


end end
