/// @description 
depth = -101;
guiX = device_mouse_x_to_gui(0);
guiY = device_mouse_y_to_gui(0);

item = mouseItem
if(item != -1)
{
	draw_sprite(spr_items,item,guiX, guiY);	
}