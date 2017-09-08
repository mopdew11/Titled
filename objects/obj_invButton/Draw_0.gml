/// @description 
/*
item = global.inv[slot]
click = mouse_check_button_pressed(mb_left);

if(abs(mouse_x) < 32) && (abs(mouse_y - y) < 32)
{
	draw_set_color(c_purple);
	draw_rectangle(x-32,y-32,x+32,y+32,0);
}