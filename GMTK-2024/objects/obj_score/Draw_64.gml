if global.gameStarted == true{
	draw_set_font(FontScore);
	draw_set_color(c_black);
	draw_set_halign(fa_left)
	draw_text(50,50,string(ceil(pos/100))+" cm")
}