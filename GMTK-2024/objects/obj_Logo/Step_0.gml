//Move Curve
curvePosition += curveSpeed;

curvePosition = curvePosition mod 1;


var _curveStruct = animcurve_get(curveAsset);
var _channel = animcurve_get_channel(_curveStruct, "xscale");

var _value = animcurve_channel_evaluate(_channel, curvePosition);

image_xscale=_value
image_yscale = _value