/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

//Transitions

if instance_exists(obj_Start) && room == Titre{
	if obj_Start.gotoGame == true{
		if !instance_exists(obj_transitionUI){
			var _inst = instance_create_layer(x,y, "TransitionUI", obj_transitionUI)
			if room == Game _inst.target_room = room else _inst.target_room = Game
		}
	}
}
else if (global.hp<=0) && (room == Game){
	if !instance_exists(obj_transitionUI){
		var _inst = instance_create_layer(x,y, "TransitionUI", obj_transitionUI)
		if room == GameOver _inst.target_room = room else _inst.target_room = GameOver
	}
}
else if (global.restart == true){
	if !instance_exists(obj_transitionUI){
		var _inst = instance_create_layer(x,y, "TransitionUI", obj_transitionUI)
		if room == Game _inst.target_room = room else _inst.target_room = Game
	}
}

if room ==  Game{
	if global.win == true && global.credits == true{
		if !instance_exists(obj_transitionUI){
			var _inst = instance_create_layer(x,y, "TransitionUI", obj_transitionUI)
			if room == endGame _inst.target_room = room else _inst.target_room = endGame
		}
	}
}




//Cheat

if keyboard_check(ord("F")){
	global.mouseYpos = 0+1000
}

if keyboard_check(vk_up){
	global.mouseYpos -= 50
}

if keyboard_check(vk_down){
	global.mouseYpos += 50
}


if keyboard_check(vk_left){
	global.mouseXpos -= 50
}

if keyboard_check(vk_right){
	global.mouseXpos += 50
}















