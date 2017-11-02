/// @description 
depth = -101;
guiX = device_mouse_x_to_gui(0);
guiY = device_mouse_y_to_gui(0);

item = mouseItem;
name = mouseName;
info = mouseInfo;
stack = mouseStack;
ammo = mouseAmmo;
ammoType = mouseAmmoType;
maxAmmo = mouseMaxAmmo;
fireRate = mouseFireRate;

if(item != -1)
{
	draw_sprite(spr_items,item,guiX, guiY);
	if(stack > 1)
	{
		draw_set_font(fnt_large);
		draw_set_color(c_yellow);
		draw_text(guiX+(32-string_width(string(stack))),guiY+(32-string_height(string(stack))),string(stack));
	}
}
	button = global.button;
	for(i = 0; i < array_length_1d(button); i++)
	{
		if(guiX >= button[i].startX && guiX <= (button[i].startX + 32) && guiY >= button[i].startY && guiY <= (button[i].startY + 32) && inventory)
		{
			if(button[i].item != -1)
			{
				draw_set_font(fnt_large);
				draw_set_color(c_yellow);

				//get offset
				yOffset = 2 + string_height(string(button[i].stack));
			
				//draw item name
				draw_text(guiX,guiY+yOffset,string(button[i].name));
			
				//draw flavor text
				draw_text(guiX,guiY+2*(yOffset),string(button[i].info));
				
				if(button[i].ammoType != -2)
				{
					ammostring = "ammo: " + string(button[i].ammo) + "/" + string(button[i].maxAmmo);
					//drawAmmo
					draw_text(guiX,guiY+3*(yOffset),ammostring);
				}
			}
		}
	}
