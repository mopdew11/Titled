/// @description 
/// @description HUD

if(inventory = false)
{
	scp_healthV3();

	draw_set_font(fnt_small);
	draw_text(x,y,i);
	draw_text_transformed_color(0,37,playerHealth,5,5,0,c_red,c_red,c_maroon,c_maroon,1);


	draw_text(100,100,"detected:" + string(detected));


	//PRIMARY WEAPON
	draw_sprite_ext(spr_inventorySlot,1,185,5,2,2,0,c_white,1);
	draw_sprite_ext(spr_items,primary,185,5,2,2,0,c_white,1);
	
	
	//MELEE WEAPON
	draw_sprite_ext(spr_inventorySlot,1,259,5,2,2,0,c_white,1);	
	draw_sprite_ext(spr_items,melee,259,5,2,2,0,c_white,1);
		
}


