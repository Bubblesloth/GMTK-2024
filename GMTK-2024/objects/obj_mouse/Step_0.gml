/// @description coucou

if global.win == true{
	if sprite_index == s_mouse{
		image_index = 0
	}
	sprite_index = s_mouseEndingAnim
	y = lerp(y,-150,0.01)
}
else{

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

if place_meeting(x,y,obj_LFR2) && invincible==false
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


}

// Invincibilité

if invincible == true{
	sprite_index = s_mouseHIT
	obj_mouse_pattounes.visible = false
}
else obj_mouse_pattounes.visible = true