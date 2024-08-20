var is_fullscreen_gamemaker = false;

function html5_window_set_fullscreen(_value) {
	if (_value) {
		if (document.documentElement.requestFullScreen) {
			document.documentElement.requestFullScreen();
			is_fullscreen_gamemaker = true;
		} else if (document.documentElement.mozRequestFullScreen) {
			document.documentElement.mozRequestFullScreen();
			is_fullscreen_gamemaker = true;
		} else if (document.documentElement.webkitRequestFullScreen) {
			document.documentElement.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);
			is_fullscreen_gamemaker = true;
		}
	}
	else {
		if (document.cancelFullScreen) {
			document.cancelFullScreen();
			console.log("EXITED");
			is_fullscreen_gamemaker = false;
		} else if (document.mozCancelFullScreen) {
			document.mozCancelFullScreen();
			console.log("EXITED");
			is_fullscreen_gamemaker = false;
		} else if (document.webkitCancelFullScreen) {
			document.webkitCancelFullScreen();
			console.log("EXITED");
			is_fullscreen_gamemaker = false;
		}
	}
}

function html5_window_toggle_fullscreen() {
	html5_window_set_fullscreen(!html5_window_get_fullscreen());
}


function html5_window_get_fullscreen() {
	return is_fullscreen_gamemaker;
}


function html5_canvas_get_position() {
	return JSON.stringify({	"x": document.getElementById("canvas").getBoundingClientRect().left,
							"y": document.getElementById("canvas").getBoundingClientRect().top,
							"width": document.getElementById("canvas").getBoundingClientRect().width,
							"height": document.getElementById("canvas").getBoundingClientRect().height});
}

document.addEventListener('fullscreenchange', html5_exitHandler);
document.addEventListener('webkitfullscreenchange', html5_exitHandler);
document.addEventListener('mozfullscreenchange', html5_exitHandler);
document.addEventListener('MSFullscreenChange', html5_exitHandler);

function html5_exitHandler() {
	is_fullscreen_gamemaker = !(!document.fullscreenElement && !document.webkitIsFullScreen && !document.mozFullScreen && !document.msFullscreenElement);
}  