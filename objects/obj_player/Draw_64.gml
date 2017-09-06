/// @description HUD

scp_healthV2(playerHealth);

draw_set_font(fnt_small);
draw_text(x,y,i);
draw_text_transformed_color(0,37,playerHealth,5,5,0,c_red,c_red,c_maroon,c_maroon,1);


draw_text(100,100,"detected:" + string(detected));


//PRIMARY WEAPON
draw_sprite_ext(spr_inventorySlot,1,185,5,2,2,0,c_white,1);
switch Primary
{
	case 0: draw_sprite_ext(spr_gun,1,185,5,2,2,0,c_white,1);
}

//MELEE slot
draw_sprite_ext(spr_inventorySlot,1,259,5,2,2,0,c_white,1);

switch secondary
{
	//starting knife
	case 1: draw_sprite_ext(spr_knife,1,259,5,2,2,0,c_white,1); break;
	//sword
	case 2: draw_sprite_ext(spr_sword,1,259,5,2,2,0,c_white,1); break;
}
