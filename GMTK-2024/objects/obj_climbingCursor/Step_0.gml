//Set up pos

x = mouse_x;
y = mouse_y;

//Keyboard Input

//Room Game
if room == Game{

	if mouse_check_button_pressed(mb_left) && obj_priseSimu.can_be_placed == true{
			instance_create_layer(x,y,"prises",obj_prise);
			instance_create_layer(x,y,"Poof",obj_Poof);
			global.time=global.startTime;
			global.timerTick = true;
			dropped = true;
			global.spriteprise= random_range(0,5)
			global.gameStarted = true
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
			dropped = false;
			droppedanim=0;
		}
		else droppedanim++
	}

}

//Room GameOver & Menu
if room == GameOver{
	
	image_alpha = 1;
	sprite_index = s_climbingCursorDropped	;
	
	if place_meeting(x,y,obj_restartButton) && mouse_check_button_pressed(mb_left){
		//feedback
		room_goto(Game);
	}
}