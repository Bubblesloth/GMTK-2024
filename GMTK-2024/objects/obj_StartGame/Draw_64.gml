/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if global.gameStarted == false{
	draw_set_alpha(0.5)
	draw_set_color(c_black);
	draw_rectangle(350,350,room_width-350,300,false)
	draw_set_alpha(1)

	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_white)
	draw_set_font(FontStart)
	draw_text(room_width/2, 315, "Attach a hold to start helping the mouse")
}