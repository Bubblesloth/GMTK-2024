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
		image_xscale = 0.2
		image_yscale = 0.2
	break;
	
	case 1:
		var _comboSound = String1;
		image_xscale = 0.21
		image_yscale = 0.21
	break;
	
	case 2:
		var _comboSound = String2;
		image_xscale = 0.22
		image_yscale = 0.22
	break;
	
	case 3:
		var _comboSound = String3;
		image_xscale = 0.23
		image_yscale = 0.23
	break;
	
	case 4:
		var _comboSound = String4;
		image_xscale = 0.24
		image_yscale = 0.24
	break;
	
	case 5:
		var _comboSound = String5;
		image_xscale = 0.25
		image_yscale = 0.25
	break;
	
	case 6:
		var _comboSound = String6;
		image_xscale = 0.26
		image_yscale = 0.26
	break;
	
	case 7:
		var _comboSound = String7;
		image_xscale = 0.27
		image_yscale = 0.27
	break;
	
	case 8:
		var _comboSound = String8;
		image_xscale = 0.28
		image_yscale = 0.28
	break;
	
	case 9:
		var _comboSound = String9;
		image_xscale = 0.29
		image_yscale = 0.29
	break;
	
	case 10:
		var _comboSound = String10;
		image_xscale = 0.30
		image_yscale = 0.30
	break;
	
	case 11:
		var _comboSound = String11;
		image_xscale = 0.31
		image_yscale = 0.31
	break;
	
	case 12:
		var _comboSound = String12;
		image_xscale = 0.32
		image_yscale = 0.32
	break;
	
	case 13:
		var _comboSound = String13;
		image_xscale = 0.33
		image_yscale = 0.33
	break;
	
	case 14:
		var _comboSound = String14;
		image_xscale = 0.34
		image_yscale = 0.34
	break;
	
	case 15:
		var _comboSound = String15;
		image_xscale = 0.35
		image_yscale = 0.35
	break;
	
	case 16:
		var _comboSound = String16;
		image_xscale = 0.36
		image_yscale = 0.36
	break;
	
	case 17:
		var _comboSound = String17;
		image_xscale = 0.37
		image_yscale = 0.37
	break;

}

	if mouse_check_button_pressed(mb_left) && obj_priseSimu.can_be_placed == true{
			instance_create_layer(x,y,"prises",obj_prise);
			instance_create_layer(x,y,"Poof",obj_Poof);
			global.time=global.startTime;
			global.timerTick = true;
			dropped = true;
			global.spriteprise= random_range(0,5);
			global.gameStarted = true;
			audio_play_sound(_comboSound,2,false);
			obj_Audio.Music_gain = 0.2;
			//instance_create_layer(x,y,"cursoreffect",obj_clickEffect);
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
	if mouse_check_button_pressed(mb_left){
		instance_create_layer(x,y,"cursoreffect",obj_clickEffect);
	}

	image_alpha = 1;
	sprite_index = s_climbingCursorDropped;
	
	if place_meeting(x,y,obj_restartButton) && mouse_check_button_pressed(mb_left){
		//feedback
		global.restart = true
	}

}

if room == Titre{
	
	if mouse_check_button_pressed(mb_left){
		instance_create_layer(x,y,"cursoreffect",obj_clickEffect);
	}
	
	image_alpha = 1
	if place_meeting(x,y,obj_Start) && dropped = false{
		sprite_index = s_climbingCursorYes
	}
	else sprite_index = s_climbingCursorDropped	
	
}


if mouse_check_button_pressed(mb_left) && room != Game audio_play_sound(click,5,false)