//Set up pos

x = mouse_x;
y = mouse_y;

//Keyboard Input

if mouse_check_button_pressed(mb_left){
		instance_create_layer(x,y,"prises",obj_prise);
		global.time=15
}