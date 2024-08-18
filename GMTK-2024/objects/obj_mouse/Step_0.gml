/// @description coucou
//Dégâts
if global.hitTick = true
{
	global.hp=global.hp-1
	global.hitTick = false
}
if place_meeting(x,y,obj_saw) && !place_meeting(x,y,lastSawInstance) && invincible==false
{
	lastSawInstance = instance_place(x,y,obj_saw)
	global.hp=global.hp-1
	global.hitTick = false
	invincible=true;
	alarm[0]=global.startTime*60;
}
if place_meeting(x,y,obj_Mouche) && invincible==false
{
	global.hp=global.hp-1
	global.hitTick = false
	invincible=true;
	alarm[0]=global.startTime*60;
}
if place_meeting(x,y,obj_LanceFlamme) && invincible==false
{
	global.hp=global.hp-1
	global.hitTick = false
	invincible=true;
	alarm[0]=global.startTime*60;
}
if place_meeting(x,y,obj_Gaz) && invincible==false
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
	x = lerp(x,global.mouseXpos,0.1)
	y = lerp(y,global.mouseYpos,0.1)
}