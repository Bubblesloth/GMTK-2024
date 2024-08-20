//Move Curve
curvePosition += curveSpeed;

curvePosition = curvePosition mod 1;


var _curveStruct = animcurve_get(curveAsset);
var _channel = animcurve_get_channel(_curveStruct, "x");

var _value = animcurve_channel_evaluate(_channel, curvePosition);

x=xstart+_value
y=ystart+_value