/*angle = point_direction(x, y, mouse_x, mouse_y);
image_angle = angle-90;*/


//pos

x=obj_circleArrow.x
y=obj_circleArrow.y+35


//		Génération aléatoire de la flèche

//Boader warning

if obj_mouse.x < 160+200{
	maxdir = 90
}
else{
	maxdir = 160
	if obj_mouse.x > 1250-200{
		mindir = 90
	}
	else{
		mindir = 20
	}
}



if global.timerTick == true{
	arrowdir = random_range(maxdir,mindir);
	angle = arrowdir;
	global.timerTick = false
}


image_angle = angle-90;