if global.win == true{
	if obj_mouse.image_speed = 0{
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text_ext_color(room_width/2, 500, "Thanks for playing <3", 0,30000,c_black,c_black,c_black,c_black,alpha)
		alpha = lerp(alpha,1,0.01)
	}
	
	
	if timer >= 750{
		global.credits = true
	}
	else timer++
}