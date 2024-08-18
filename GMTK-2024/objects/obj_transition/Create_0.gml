/// @description Insérez la description ici
spr = s_trans_sq;
sprw = sprite_get_width(spr);
sprh = sprite_get_height(spr);


//Div pour récupérer nb de sprites possibles
xmax = display_get_gui_width() div sprw
ymax = display_get_gui_height() div sprh

//anim speed
sub_image_index_inc = sprite_get_speed(spr)/room_speed;
sub_image_index = 0;

//color
col = c_black;