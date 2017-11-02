/// @description UI

if(inventory = false)
{
	scp_healthV4(0,0);

	draw_set_font(fnt_small);

	draw_text_transformed_color(0,37,int64(playerHealth),5,5,0,c_red,c_red,c_maroon,c_maroon,1);

	draw_text(100,100,"detected:" + string(detected));

	//AMMO
	switch selected
	{
		case 0: ammo = global.inv[5,20]; maxAmmo = global.inv[6,20]; break;
		case 1: ammo = global.inv[5,21]; maxAmmo = global.inv[6,21]; break;
	}

	draw_set_font(fnt_larger);
	draw_set_color(c_white);
	if(maxAmmo > -1)
	{
		yy = window_get_height() - string_height(string(ammo) + "/" + string(maxAmmo)) - 10;
		xx = window_get_width() - string_width(string(ammo) + "/" + string(maxAmmo)) -20;
		draw_text(xx,yy,string(ammo) + "/" + string(maxAmmo));
	}
	
	


	//PRIMARY WEAPON
	sX = display_get_gui_width() - 144;
	draw_sprite_ext(spr_inventorySlot,1,sX,8,2,2,0,c_white,1);
	if(primary != -1)
		draw_sprite_ext(spr_items,primary,sX,8,2,2,0,c_white,1);
	
	//SECONDARY WEAPON
	sX = display_get_gui_width() - 72;
	draw_sprite_ext(spr_inventorySlot,0,sX,8,2,2,0,c_white,1);	
	if(secondary != -1)
		draw_sprite_ext(spr_items,secondary,sX,8,2,2,0,c_white,1);
	
	//MELEE WEAPON
	draw_sprite_ext(spr_inventorySlot,1,sX,80,2,2,0,c_white,1);	
	if(melee != -1)
		draw_sprite_ext(spr_items,melee,sX,80,2,2,0,c_white,1);
		
	//DRAW SELECTED ICON
	if(selected = 1)
	{
		sX = display_get_gui_width() - 74;
		draw_sprite_ext(spr_select,0,sX,6,2,2,0,c_white,1);
	}	
	else
	{
		sX = display_get_gui_width() - 146;
		draw_sprite_ext(spr_select,0,sX,6,2,2,0,c_white,1);
	}
}


