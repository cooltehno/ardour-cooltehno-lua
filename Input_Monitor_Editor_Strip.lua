-- ardour { ["type"] = "Snippet", name = "" }
-- function factory () return function () -- -- end end
ardour {
    ["type"]    = "EditorAction",
    name        = "Input Monitoring Editor MixStrip",
    license     = "MIT",
    author      = "cooltehno",
    description = "Toggle on/off Input Monitoring of selected trakcs in the Editor"
}

function factory () return function ()

        Editor:access_action("Mixer","toggle-input-monitor")
	

end end


function icon (params) return function (ctx, width, height)
	local x = width * .5
	local y = height * .5
	local r = math.min (x, y) * .72

	ctx:arc (x, y, r, 0, 2 * math.pi)
	ctx:set_source_rgba (.8, .5, .1, 1.)
	ctx:fill_preserve ()
	ctx:set_source_rgba (0, 0, 0, .8)
	ctx:set_line_width (2)
	ctx:stroke ()

	local txt = Cairo.PangoLayout (ctx, "ArdourMono ".. math.ceil(r * 1.1) .. "px")
	txt:set_text ("IN")
	local tw, th = txt:get_pixel_size ()
	ctx:set_source_rgba (0, 0, 0, 1.0)
	ctx:move_to (.45 * (width - tw), .5 * (height - th))
	txt:show_in_cairo_context (ctx)
end end
