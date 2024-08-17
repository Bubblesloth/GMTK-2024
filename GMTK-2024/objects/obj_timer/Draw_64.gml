if global.gameStarted == true{
	draw_set_font(FontTimer);
	draw_set_color(c_black);
	draw_set_halign(fa_left)
	draw_text(900,50,"Time left"+string(showtime));
}