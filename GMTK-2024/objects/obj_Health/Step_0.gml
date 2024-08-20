if place_meeting(x,y,obj_mouse) && global.hp<3
{
	global.hp=global.hp+1;
	audio_play_sound(hpGain,2,false);
	instance_destroy();
}
if place_meeting(x,y,obj_mouse) && global.hp>=3{
	if soundFullplayed == false{
		audio_play_sound(hpfull,3,false);
		soundFullplayed = true
	}
}