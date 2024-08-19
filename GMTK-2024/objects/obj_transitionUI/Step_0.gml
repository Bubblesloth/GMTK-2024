/// @description Insérez la description ici

switch(state){
	case true:
		if transitionPlaying == false{
			transitionPlaying = true
			audio_play_sound(TransitionIN, 2, false);
		}
		//to stop anim
		if sub_image_index < imax + xmax{
			//inc index
		sub_image_index += sub_image_index_inc;
		}
		else{
			state = false
			transitionPlaying = false
			if room_exists(target_room) room_goto(target_room);
		}
	break;
	case false:
		if transitionPlaying == false{
			transitionPlaying = true
			audio_play_sound(TransitionOUT, 2, false);
		}
		if sub_image_index > 0{
			sub_image_index -= sub_image_index_inc;
		} else instance_destroy()
	break;
}