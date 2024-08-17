//Set up pos

x = mouse_x;
y = mouse_y;

//Keyboard Input

if mouse_check_button_pressed(mb_left) && !place_meeting(x,y, obj_hole) && place_meeting(x,y,obj_placeArea) && !place_meeting(x,y, obj_rebord)&& !place_meeting(x,y,obj_saw){
		instance_create_layer(x,y,"prises",obj_prise);
		global.time=global.startTime;
		global.timerTick = true;
		dropped = true;
}
else if mouse_check_button_pressed(mb_left){
	global.failClimb = true;
	global.time=global.startTime;
	global.timerTick = true;
	global.hitTick = true;
}


//Sprites change

if !place_meeting(x,y, obj_hole) && place_meeting(x,y,obj_placeArea)&& !place_meeting(x,y, obj_rebord) && !place_meeting(x,y,obj_saw) && dropped == false{
	sprite_index = s_climbingCursorYes;
}
else if dropped == false{
	sprite_index = s_climbingCursorNo;
}

if dropped == true{
	sprite_index = s_climbingCursorDropped
	if droppedanim >= 30{
		dropped = false
		droppedanim=0
	}
	else droppedanim++
}