/// @description HUD

draw_set_font(fnt_large);
draw_text(x,y,i);
draw_text_transformed_color(0,0,playerHealth,5,5,0,c_red,c_red,c_maroon,c_maroon,1);

if(close == true && keyboard_check(ord("E")))
{
	scp_textBox("heyo, im an old man, but also\na spider square! ain't that nice!",.5,obj_olManSpider.x+10,obj_olManSpider.y-5);
	if(instance_exists(obj_bubble))
	{
		instance_destroy(obj_bubble);
	}

}