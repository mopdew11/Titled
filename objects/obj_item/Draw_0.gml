/// @description 
draw_sprite(spr_items,ID,x,y);

draw_set_color(c_white);
if(stack > 1)
{
	draw_set_font(fnt_large);
	draw_set_color(c_yellow);
	draw_text(x+10,y+10,string(stack));
}

scr_e_prompt();
/*if(distance_to_object(obj_player) < 1)
{
	draw_set_color(c_yellow);
	draw_set_font(fnt_small);
	draw_text(x +sign((x - obj_player.x) + 1) * drawAdd,y - drawAdd,"e");	
}*/