

if(distance_to_object(obj_player) < 1)
{
	draw_set_color(c_yellow);
	draw_set_font(fnt_small);
	draw_text(x +sign((x - obj_player.x) + 1) * drawAdd,y - drawAdd,"e");	
}