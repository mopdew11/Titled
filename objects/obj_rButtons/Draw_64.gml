if(guiY < y && guiY > y+height)
{
	draw_set_color(c_yellow)
	draw_set_alpha(.4);
	draw_rectangle(0,y,width,y+height,false);
}