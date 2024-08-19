/// @description VICTORY FLAG

if global.win == true{
	x=obj_mouse.x

	if obj_mouse.image_speed == 0{
		y= lerp(y, obj_mouse.y,0.1)
	}
}