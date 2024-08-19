if global.gameStarted == true{
	draw_set_font(FontScore);
	draw_set_color(c_black);
	draw_set_halign(fa_left)
	if global.win == true{
		draw_text(50,50,string(0)+" cm")
	}
	else{
		draw_text(50,50,string(pos)+" cm")
	}
}