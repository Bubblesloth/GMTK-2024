//Set up pos

x = mouse_x;
y = mouse_y;

//Keyboard Input

if mouse_check_button_pressed(mb_left) && obj_priseSimu.can_be_placed == true{
		instance_create_layer(x,y,"prises",obj_prise);
		global.time=global.startTime;
		global.timerTick = true;
		dropped = true;
		global.spriteprise= random_range(0,5)
}
else if mouse_check_button_pressed(mb_left){
	global.failClimb = true;
}


//Sprites change

if obj_priseSimu.can_be_placed == true && dropped == false{
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