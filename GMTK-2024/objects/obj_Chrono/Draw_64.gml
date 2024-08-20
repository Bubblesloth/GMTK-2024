if global.win==true
{
	draw_sprite_ext(s_textbox,0,room_width-240,80,0.4,0.2,0,c_white,1)
	draw_set_font(FontScore);
	draw_set_color(#092D77);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width-250,65,"Time: "+ string(ceil(mytime/60))+ "s");
}