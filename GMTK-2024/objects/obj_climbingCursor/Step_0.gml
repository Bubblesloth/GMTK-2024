//Set up pos

x = mouse_x;
y = mouse_y;

//COMBO

//Room Game
if room == Game{
	if global.win == true{
		image_alpha = lerp(image_alpha,0,0.1)
	}
else{


switch(combo){
	
	case 0:
		var _comboSound = String0;
	break;
	
	case 1:
		var _comboSound = String1;
	break;
	
	case 2:
		var _comboSound = String2;
	break;
	
	case 3:
		var _comboSound = String3;
	break;
	
	case 4:
		var _comboSound = String4;
	break;
	
	case 5:
		var _comboSound = String5;
	break;
	
	case 6:
		var _comboSound = String6;
	break;
	
	case 7:
		var _comboSound = String7;
	break;
	
	case 8:
		var _comboSound = String8;
	break;
	
	case 9:
		var _comboSound = String9;
	break;
	
	case 10:
		var _comboSound = String10;
	break;
	
	case 11:
		var _comboSound = String11;
	break;
	
	case 12:
		var _comboSound = String12;
	break;
	
	case 13:
		var _comboSound = String13;
	break;
	
	case 14:
		var _comboSound = String14;
	break;
	
	case 15:
		var _comboSound = String15;
	break;
	
	case 16:
		var _comboSound = String16;
	break;
	
	case 17:
		var _comboSound = String17;
	break;

}

	if mouse_check_button_pressed(mb_left) && obj_priseSimu.can_be_placed == true{
			instance_create_layer(x,y,"prises",obj_prise);
			instance_create_layer(x,y,"Poof",obj_Poof);
			global.time=global.startTime;
			global.timerTick = true;
			dropped = true;
			global.spriteprise= random_range(0,5)
			global.gameStarted = true
			audio_play_sound(_comboSound,2,false)
			if combo < 17 combo++
			else{
				combo = 0
				COMBOOO = true
			}
	}
	else if mouse_check_button_pressed(mb_left){
		global.failClimb = true;
		combo = 0
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

}


//Room GameOver & Menu
if room == GameOver{
	
	image_alpha = 1;
	sprite_index = s_climbingCursorDropped	;
	
	if place_meeting(x,y,obj_restartButton) && mouse_check_button_pressed(mb_left){
		//feedback
		global.restart = true
	}

}

if room == Titre{
	
	image_alpha = 1
	sprite_index = s_climbingCursorDropped	
	
}




