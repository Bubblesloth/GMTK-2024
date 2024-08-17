//Set up pos

x = mouse_x;
y = mouse_y;

//Keyboard Input

if mouse_check_button_pressed(mb_left) && !place_meeting(x,y, obj_hole) && place_meeting(x,y,obj_placeArea){
		instance_create_layer(x,y,"prises",obj_prise);
		global.time=global.startTime;
		global.timerTick = true;
}