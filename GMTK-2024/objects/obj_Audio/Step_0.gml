/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

//CatScream

if instance_exists(obj_cat){
	switch(obj_cat.catsound){
		case 0:
			actualCatSound = 0
			audio_stop_sound(sfx_catScream4)
		break;
		
		case 1:
			if actualCatSound != obj_cat.catsound{
			audio_play_sound(sfx_catScream1,3,false)
			actualCatSound = 1
			}
		break;
		
		case 2:
			audio_stop_sound(sfx_catScream1)
			if actualCatSound != obj_cat.catsound{
			audio_play_sound(sfx_catScream2,3,false)
			actualCatSound = 2
			}
		break;
		
		case 3:
			audio_stop_sound(sfx_catScream2)
			if actualCatSound != obj_cat.catsound{
			audio_play_sound(sfx_catScream3,3,false)
			actualCatSound = 3
			}
		break;
		
		case 4:
			audio_stop_sound(sfx_catScream3)
			if actualCatSound != obj_cat.catsound{
			audio_play_sound(sfx_catScream4,3,false)
			actualCatSound = 4
			}
		break;
	}
}

//COMBOOO

if obj_climbingCursor.COMBOOO == true{
	COMBOOO = irandom_range(0,15)
	switch(COMBOOO){
		case 0:
			audio_play_sound(COMBO0,2,false);
		break;
		
		case 1:
			audio_play_sound(COMBO1,2,false);
		break;
		
		case 2:
			audio_play_sound(COMBO2,2,false);
		break;
		
		case 3:
			audio_play_sound(COMBO3,2,false);
		break;
		
		case 4:
			audio_play_sound(COMBO4,2,false);
		break;
		
		case 5:
			audio_play_sound(COMBO5,2,false);
		break;
		
		case 6:
			audio_play_sound(COMBO6,2,false);
		break;
		
		case 7:
			audio_play_sound(COMBO7,2,false);
		break;
		
		case 8:
			audio_play_sound(COMBO8,2,false);
		break;
		
		case 9:
			audio_play_sound(COMBO9,2,false);
		break;
		
		case 10:
			audio_play_sound(COMBO10,2,false);
		break;
		
		case 11:
			audio_play_sound(COMBO11,2,false);
		break;
		
		case 12:
			audio_play_sound(COMBO12,2,false);
		break;
		
		case 13:
			audio_play_sound(COMBO13,2,false);
		break;
		
		case 14:
			audio_play_sound(COMBO14,2,false);
		break;
		
		case 15:
			audio_play_sound(COMBO15,2,false);
		break;	
	}
	obj_climbingCursor.COMBOOO = false
}