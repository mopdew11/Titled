/// @description UI

if(inventory = false)
{
	scp_healthV4(0,0);

	draw_set_font(fnt_small);

	draw_text_transformed_color(0,37,playerHealth,5,5,0,c_red,c_red,c_maroon,c_maroon,1);


	draw_text(100,100,"detected:" + string(detected));


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


