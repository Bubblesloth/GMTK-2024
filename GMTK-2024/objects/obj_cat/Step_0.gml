if global.hitTick == true{
	startHitAnim = true
}

if startHitAnim == false{
	x=obj_mouse.x + catShake
	y=lerp(y,obj_mouse.y+ecartsouris,0.1)
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

//Anim curve Shake

//Move Curve
curvePosition += curveSpeed;

curvePosition = curvePosition mod 1;


var _curveStruct = animcurve_get(curveAsset);
var _channel = animcurve_get_channel(_curveStruct, "x");

var _value = animcurve_channel_evaluate(_channel, curvePosition);

//Changement de sprite
switch(obj_timer.showtime){
	case 4:
		ecartsouris = 180;
		image_index = 4;
		catShake = _value;
		curveSpeed = 0.1;
	break;
	case 3:
		ecartsouris = 160;
		image_index = 3;
		catShake = _value*5;
		curveSpeed = 0.11;
	break;
	case 2:
		ecartsouris = 140;
		image_index = 2;
		catShake = _value*10;
		curveSpeed = 0.115;
	break;
	case 1:
		ecartsouris = 120;
		image_index = 1;
		catShake = _value*15;
		curveSpeed = 0.118;
	break;
	case 0:
		ecartsouris = 110;
		image_index = 0;
		catShake = _value*20;
		curveSpeed = 0.12;
	break;
}

