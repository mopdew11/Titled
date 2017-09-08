/// @description 

item = global.inv[slot]
click = mouse_check_button_pressed(mb_left);

if(abs(mouse_x) < 16) && (abs(mouse_y - y) < 16)
{
	draw_set_color(c_purple);
	draw_rectangle(x-16,y-16,x+16,y+16,0);
}