/// @description Les petites pattounes :3
// Vous pouvez écrire votre code dans cet éditeur

if instance_exists(obj_prise){
	x = lerp(x,global.mouseXpos,0.1)
	y = lerp(y,global.mouseYpos,0.1)
}

//Jump

if obj_climbingCursor.dropped == true{
	sprite_index = s_mouse_jump
}
else{
	sprite_index = s_mouse_idle
}