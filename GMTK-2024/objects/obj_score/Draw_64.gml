if global.gameStarted == true{
	draw_sprite_ext(s_textbox,0,140,80,0.2,0.2,0,c_white,1)
	draw_set_font(FontScore);
	draw_set_color(#092D77);
	draw_set_halign(fa_left)
	if global.win == true{
		draw_text(80,55,string(0)+" cm")
	}
	else{
		if pos >=100{
		draw_text(55,55,string(pos))
		draw_text(155,55,"cm")
		}
		else if pos >=10{
		draw_text(70,55,string(pos))
		draw_text(140,55,"cm")
		}
		else if pos >= 0{
		draw_text(80,55,string(pos)+" cm")
		}
	}
}