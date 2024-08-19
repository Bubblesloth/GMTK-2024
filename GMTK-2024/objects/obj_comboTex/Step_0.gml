
//Move Curve
curvePosition += curveSpeed;

curvePosition = curvePosition mod 1;

//Apply
var _curveStruct = animcurve_get(curveAsset);
var _channel = animcurve_get_channel(_curveStruct, "x");

var _value = animcurve_channel_evaluate(_channel, curvePosition);


x = room_width/2 + _value*5
y = obj_mouse.y-350  + _value*5

if obj_climbingCursor.COMBOOO==true{
	active_anim = true
}

if active_anim == true{
	if timer >= 80{
		timer = 0
		visible = false
		active_anim = false
	}
	else{
		timer++
		visible = true
	}
		
}