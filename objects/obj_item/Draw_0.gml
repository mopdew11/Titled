/// @description 
draw_sprite(spr_items,ID,x,y);

draw_set_color(c_white);
if(stack > 1)
{
	draw_set_font(fnt_large);
	draw_set_color(c_yellow);
	draw_text(x+20,y+20,string(stack));
}