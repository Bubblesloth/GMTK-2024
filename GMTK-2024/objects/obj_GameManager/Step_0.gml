/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if keyboard_check((ord("H"))){
	if !instance_exists(obj_transition){
		instance_create_layer(x,y, "Transition", obj_transition)
	}
}