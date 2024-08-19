x=obj_mouse.x;
y=obj_mouse.y-15;

if global.hitTick == true{
	anim = true;
}

if anim == true{
	if timer <= 10{
		image_alpha=lerp(image_alpha,1,0.5);
		visible = true;
		timer++;
	}
	else{
		visible = false;
		timer=0;
		anim = false;
		image_alpha=0;
	}
}