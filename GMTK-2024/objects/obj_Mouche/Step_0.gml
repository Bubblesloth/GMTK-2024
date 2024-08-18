hspd=walkspd

if (place_meeting(x+hspd,y,obj_rebord))
{
	walkspd = walkspd*-1
	image_xscale=image_xscale * -1
}

x=x+hspd