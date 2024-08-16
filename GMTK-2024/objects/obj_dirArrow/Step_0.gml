/*angle = point_direction(x, y, mouse_x, mouse_y);
image_angle = angle-90;*/


//pos

x=obj_circleArrow.x
y=obj_circleArrow.y-10


//Génération aléatoire de la flèche

if global.timerTick == true{
	arrowdir = random_range(20,160);
	angle = arrowdir;
	global.timerTick = false
}

image_angle = angle-90;