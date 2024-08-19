/// @description Insérez la description ici

state = true; //true = OUT false = IN

transitionPlaying = false
spr = s_trans_circle;
sprw = sprite_get_width(spr);
sprh = sprite_get_height(spr);


//Div pour récupérer nb de sprites possibles
xmax = display_get_gui_width() div sprw
ymax = display_get_gui_height() div sprh
//index max
imax = sprite_get_number(spr);

//anim speed
sub_image_index_inc = sprite_get_speed(spr)/room_speed;
sub_image_index = 0;

//color
col = c_white;

//target room
target_room = noone;