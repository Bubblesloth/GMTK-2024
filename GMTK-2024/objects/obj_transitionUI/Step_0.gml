/// @description Insérez la description ici

switch(state){
	case true:

		//to stop anim
		if sub_image_index < imax + xmax{
			//inc index
		sub_image_index += sub_image_index_inc;
		}
		else{
			state = false
			//goto room
			if room_exists(target_room) room_goto(target_room);
		}
	break;
	case false:
		if sub_image_index > 0{
			sub_image_index -= sub_image_index_inc;
		} else instance_destroy()
	break;
}