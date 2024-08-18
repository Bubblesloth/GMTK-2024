if global.hitTick == true{
	startHitAnim = true
}

if startHitAnim == false{
	x=obj_mouse.x
	y=obj_mouse.y+200
}

	//Anim
	
if y != obj_mouse.y && startHitAnim == true && endHitAnim == false{
	for (var i = 0; i < 50; i++){
		x = lerp(x,obj_mouse.x,0.1)
		y = lerp(y,obj_mouse.y,0.1)
		if i == 49{
			endHitAnim = true
		}
	}
}

	
if endHitAnim == true{
	x = lerp(x,obj_mouse.x,0.1)
	y = lerp(y,obj_mouse.y+200,0.1)
	if y >= obj_mouse.y+190{
		startHitAnim = false
		endHitAnim = false
	}
}
