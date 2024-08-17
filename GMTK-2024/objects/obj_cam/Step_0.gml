//Fullscreen
if keyboard_check_pressed(vk_f11){
	window_set_fullscreen(!window_get_fullscreen());
}



if !instance_exists(obj_mouse) exit;

//camera size

var _camWidth = camera_get_view_width(view_camera[0]);
var _camHeight = camera_get_view_height(view_camera[0]);

//Get camera target coo

var _camX = obj_mouse.x - _camWidth/2;
var _camY = obj_mouse.y - _camHeight/2;

//No cam room borders

_camX = clamp(_camX, 0, room_width - _camWidth); 
_camY = clamp(_camY, 0, room_height - _camHeight); 

//Set cam

camera_set_view_pos(view_camera[0], _camX, _camY)