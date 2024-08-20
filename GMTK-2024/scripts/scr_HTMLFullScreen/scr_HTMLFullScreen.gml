// Configuration - edit these values

#macro	HTML5_FULLSCREEN_CLICKABLE_SPRITE		spr_HTML5FullScreen									// Sprite of clickable - set to -1 to not render
#macro	HTML5_FULLSCREEN_CLICKABLE_IMAGE		0													// Image index of clickable sprite
#macro	HTML5_FULLSCREEN_CLICKABLE_SCALE		1													// Scale of clickable sprite
#macro	HTML5_FULLSCREEN_CLICKABLE_ALPHA		0.5													// Alpha of clickable sprite
#macro	HTML5_FULLSCREEN_CLICKABLE_X			-sprite_get_width(spr_HTML5FullScreen)				// Relative to the X anchor point
#macro	HTML5_FULLSCREEN_CLICKABLE_Y			-sprite_get_height(spr_HTML5FullScreen)				// Relative to the Y anchor point
#macro	HTML5_FULLSCREEN_CLICKABLE_X_ANCHOR		HTML5_FULLSCREEN_ANCHOR.CANVAS_RIGHT_OR_BOTTOM		// X anchor point
#macro	HTML5_FULLSCREEN_CLICKABLE_Y_ANCHOR		HTML5_FULLSCREEN_ANCHOR.CANVAS_RIGHT_OR_BOTTOM		// Y anchor point






// ----------------------------------------------------------------------------------------------------------------------------------------------------
// Do not edit beyond this point unless you know what you're doing :)

#macro HTML5_FULLSCREEN_VERSION "2023.10"
enum	HTML5_FULLSCREEN_ANCHOR {
	BROWSER,
	CANVAS_LEFT_OR_TOP,
	CANVAS_CENTER_OR_MIDDLE,
	CANVAS_RIGHT_OR_BOTTOM
}

global.html5_clickable_id = undefined;

var _t = call_later(1, time_source_units_frames, function() {
	if (os_browser != browser_not_a_browser && os_type != os_operagx) {
		var _canvas = json_parse(html5_canvas_get_position());
		var _anchor_x = HTML5_FULLSCREEN_CLICKABLE_X_ANCHOR == HTML5_FULLSCREEN_ANCHOR.BROWSER ? 0 :
						(HTML5_FULLSCREEN_CLICKABLE_X_ANCHOR == HTML5_FULLSCREEN_ANCHOR.CANVAS_LEFT_OR_TOP ? _canvas.x :
						(HTML5_FULLSCREEN_CLICKABLE_X_ANCHOR == HTML5_FULLSCREEN_ANCHOR.CANVAS_RIGHT_OR_BOTTOM ? _canvas.x + _canvas.width : _canvas.x + _canvas.width/2));
		var _anchor_y = HTML5_FULLSCREEN_CLICKABLE_Y_ANCHOR == HTML5_FULLSCREEN_ANCHOR.BROWSER ? 0 :
						(HTML5_FULLSCREEN_CLICKABLE_Y_ANCHOR == HTML5_FULLSCREEN_ANCHOR.CANVAS_LEFT_OR_TOP ? _canvas.y :
						(HTML5_FULLSCREEN_CLICKABLE_Y_ANCHOR == HTML5_FULLSCREEN_ANCHOR.CANVAS_RIGHT_OR_BOTTOM ? _canvas.y + _canvas.height : _canvas.y + _canvas.height/2));
		if (HTML5_FULLSCREEN_CLICKABLE_SPRITE != -1)	global.html5_clickable_id = clickable_add_ext(_anchor_x + HTML5_FULLSCREEN_CLICKABLE_X, _anchor_y + HTML5_FULLSCREEN_CLICKABLE_Y, sprite_get_tpe(HTML5_FULLSCREEN_CLICKABLE_SPRITE, HTML5_FULLSCREEN_CLICKABLE_IMAGE), "gmcallback_html5_window_toggle_fullscreen", "_self", "location=0, menubar=0, resizable=0, scrollbars=0, status=0, toolbar=0", HTML5_FULLSCREEN_CLICKABLE_SCALE, HTML5_FULLSCREEN_CLICKABLE_ALPHA);
	}
});

function html5_clickable_reposition() {
	if (!is_undefined(global.html5_clickable_id) && HTML5_FULLSCREEN_CLICKABLE_SPRITE != -1) {
		var _canvas = json_parse(html5_canvas_get_position());
		var _anchor_x = HTML5_FULLSCREEN_CLICKABLE_X_ANCHOR == HTML5_FULLSCREEN_ANCHOR.BROWSER ? 0 :
						(HTML5_FULLSCREEN_CLICKABLE_X_ANCHOR == HTML5_FULLSCREEN_ANCHOR.CANVAS_LEFT_OR_TOP ? _canvas.x :
						(HTML5_FULLSCREEN_CLICKABLE_X_ANCHOR == HTML5_FULLSCREEN_ANCHOR.CANVAS_RIGHT_OR_BOTTOM ? _canvas.x + _canvas.width : _canvas.x + _canvas.width/2));
		var _anchor_y = HTML5_FULLSCREEN_CLICKABLE_Y_ANCHOR == HTML5_FULLSCREEN_ANCHOR.BROWSER ? 0 :
						(HTML5_FULLSCREEN_CLICKABLE_Y_ANCHOR == HTML5_FULLSCREEN_ANCHOR.CANVAS_LEFT_OR_TOP ? _canvas.y :
						(HTML5_FULLSCREEN_CLICKABLE_Y_ANCHOR == HTML5_FULLSCREEN_ANCHOR.CANVAS_RIGHT_OR_BOTTOM ? _canvas.y + _canvas.height : _canvas.y + _canvas.height/2));
		clickable_change_ext(global.html5_clickable_id, sprite_get_tpe(HTML5_FULLSCREEN_CLICKABLE_SPRITE, HTML5_FULLSCREEN_CLICKABLE_IMAGE), _anchor_x + HTML5_FULLSCREEN_CLICKABLE_X, _anchor_y + HTML5_FULLSCREEN_CLICKABLE_Y, HTML5_FULLSCREEN_CLICKABLE_SCALE, HTML5_FULLSCREEN_CLICKABLE_ALPHA);
	}
}

function gmcallback_html5_window_toggle_fullscreen() {
	html5_window_toggle_fullscreen();
}

var _t = call_later(4, time_source_units_frames, function() {
	html5_clickable_reposition();
}, true);


/*
function device_mouse_x_to_gui_html5(_device) {
	if (os_browser == browser_not_a_browser || os_type == os_operagx) {
		return device_mouse_x_to_gui(_device);
	}
	else {
		var _canvas = json_parse(ext_GetCanvasPosition());
		return _canvas.width == 0 ? 0 : display_get_gui_width()/_canvas.width * device_mouse_x_to_gui(_device);
	}
}
function device_mouse_y_to_gui_html5(_device) {
	if (os_browser == browser_not_a_browser || os_type == os_operagx) {
		return device_mouse_y_to_gui(_device);
	}
	else {
		var _canvas = json_parse(ext_GetCanvasPosition());
		return _canvas.height == 0 ? 0 : display_get_gui_height()/_canvas.height * device_mouse_y_to_gui(_device);
	}
}
*/


show_debug_message("HTML5 Fullscreen extension version "+HTML5_FULLSCREEN_VERSION+" by manta ray");