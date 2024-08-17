/// @description coucou
//Dégâts
if global.hitTick = true
{
	global.hp=global.hp-1
	global.hitTick = false
}
//Fin de partie
if global.hp<=0
{
	game_restart();
}

//Déplacements

if instance_exists(obj_prise){
	x = global.mouseXpos
	y = global.mouseYpos
}

//Caméra

halfViewWidth = camera_get_view_width(view_camera[0])/2;
halfViewHeight = camera_get_view_height(view_camera[0])/2;
camera_set_view_pos(view_camera[0], x-halfViewWidth,y-halfViewHeight);