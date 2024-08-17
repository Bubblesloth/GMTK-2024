if place_meeting(x,y,obj_mouse) && global.hp<3
{
	global.hp=global.hp+1
	instance_destroy();
}