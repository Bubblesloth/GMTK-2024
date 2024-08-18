/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if keyboard_check((ord("H"))){
	if !instance_exists(obj_transitionUI){
		instance_create_layer(x,y, "TransitionUI", obj_transitionUI)
	}
}

if keyboard_check_pressed(vk_space){
	global.hp++
}




if keyboard_check(ord("F")){
	global.mouseYpos = 0+1000
}

















