//USE ONLY ON ITEMS
//scp_additem(itemID)
if(place_meeting(x,y,obj_player))
{
	if(keyboard_check_pressed(ord("E")))
	{	
		additem = scp_itemPickup(argument0);
		if(additem = false)
		{
			draw_set_font(fnt_large);
			draw_set_color(c_white);
			draw_text(view_wport[0] / 2,view_hport[0] / 2,"inventory full");			
		}else
		{
			instance_destroy();
		}
		
	}
}