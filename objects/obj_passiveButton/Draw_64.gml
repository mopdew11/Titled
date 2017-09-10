/// @description 
if(inventory == true)
{
	item = global.pInv[slot]
	click = mouse_check_button_pressed(mb_left);



	if(guiMouseX > startX && !(guiMouseX > startX + 32) && guiMouseY > startY && !(guiMouseY > startY + 32))
	{
		draw_set_color(c_green);
		draw_rectangle(startX,startY,startX+32,startY+32,0);
		if(click)
		{
			if (item != -1)
			{
				scp_itemDrop_slot(slot,global.pInv);
			}
			if(mouseItem != -1)
			{
				scp_itemPickup_slot(slot,mouseItem,global.pInv);
			}
			mouseItem = item;
		}
	}
	depth = -100;
	if(inventory = true)
	{
		if(item != -1)
		{
			draw_sprite(spr_items,item,startX,startY);
	}
	}
}