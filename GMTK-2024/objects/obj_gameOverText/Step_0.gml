/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if deathscreenTimer >= 80{
	if mouse_check_button_pressed(mb_left){
		room_goto(Game)
	}
}
else deathscreenTimer++