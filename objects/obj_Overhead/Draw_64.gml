/// @description death text
draw_set_font(fnt_large)
if(!instance_exists(obj_player))
{
	draw_text_transformed_color(middleX,middleY,"YOU DIED",8,8,0,c_purple,c_purple,c_gray,c_black,1);
	draw_text_transformed_color(middleX+80,middleY+100,"R to reset",4,4,0,c_purple,c_purple,c_gray,c_black,1);
}