/// @description coucou
//Dégâts
if global.hitTick = true
{
	global.hp=global.hp-1
	global.hitTick = false
}
if place_meeting(x,y,obj_saw) && invincible==false
{
	global.hp=global.hp-1
	global.hitTick = false
	invincible=true;
	alarm[0]=global.startTime*60;
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

