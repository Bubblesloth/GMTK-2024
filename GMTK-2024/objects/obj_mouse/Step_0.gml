/// @description coucou
//Dégâts
if global.hitTick = true
{
	global.hp=global.hp-1
	obj_climbingCursor.combo = 0
	global.hitTick = false
}
if place_meeting(x,y,obj_saw) && !place_meeting(x,y,lastSawInstance) && invincible==false
{
	lastSawInstance = instance_place(x,y,obj_saw)
	global.hitTick = true
	invincible=true;
	alarm[0]=global.startTime*60;
}
if place_meeting(x,y,obj_Mouche) && invincible==false
{
	global.hitTick = true
	invincible=true;
	alarm[0]=global.startTime*60;
}

if place_meeting(x,y,obj_LF2) && invincible==false
{
	global.hitTick = true
	invincible=true;
	alarm[0]=global.startTime*60;
}
if place_meeting(x,y,obj_Gaz) && invincible==false
{
	global.hitTick = true
	invincible=true;
	alarm[0]=global.startTime*60;
}

//Déplacements

if instance_exists(obj_prise){
	x = lerp(x,global.mouseXpos,0.1)
	y = lerp(y,global.mouseYpos,0.1)
}