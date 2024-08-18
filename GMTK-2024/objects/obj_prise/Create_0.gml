global.mouseXpos = x
global.mouseYpos = y+50


image_xscale=0.2
image_yscale=0.2

//Sprite
image_index=global.spriteprise;

//Detruire scie au placement

if place_meeting(x,y,obj_saw){
	instance_place(x,y,obj_saw).image_speed = 0
}