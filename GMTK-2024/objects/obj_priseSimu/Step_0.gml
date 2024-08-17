/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

//Pos

x = obj_climbingCursor.x
y = obj_climbingCursor.y


//Can be placed

if !place_meeting(x,y, obj_hole) && place_meeting(x,y,obj_placeArea){
	can_be_placed = true
}
else{
	can_be_placed = false	
}

//Change Opacity

image_alpha = 0.5;

//Sprite
image_index=global.spriteprise;


