/// @description coucou
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