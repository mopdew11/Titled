/// @description death text

if(dead == true)
{
	draw_set_font(fnt_largest)
	draw_set_color(c_purple)

	xx = (window_get_width()/2) - (string_width("YOU IS DED")/2)
	yy = (window_get_height()/2) - (string_height("YOU IS DED")/2)

	draw_text(xx,yy,"YOU IS DED");
}


