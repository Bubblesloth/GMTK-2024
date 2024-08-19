if global.win == false{

if global.failClimb == true{
	audio_play_sound(sfx_cantPlace,1,false);
	global.failClimb = false;
	//Pénalité :
	global.time -= 1
}	


}