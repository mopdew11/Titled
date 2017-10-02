/// @description 
if(inventory == true)
{
	item = global.inv[slot]
	click = mouse_check_button_pressed(mb_left);



	if(guiMouseX > startX && !(guiMouseX > startX + 32) && guiMouseY > startY && !(guiMouseY > startY + 32))
	{
		draw_set_color(c_green);
		draw_rectangle(startX,startY,startX+32,startY+32,0);
		draw_set_font(fnt_large);
		draw_set_color(c_white);
		if(click)
		{
			
			if(slot == 20)
			{
				if(scp_searchArray(obj_inventory.primaryArray,mouseItem) != false || mouseItem == -1)
				{
					if (item != -1)
				{
					scp_itemDrop_slot(slot);
				}
				if(mouseItem != -1)
				{
					scp_itemPickup_slot(slot,mouseItem);
				}
				mouseItem = item;
				}
			}
			else if(slot == 21)
			{
				if(scp_searchArray(obj_inventory.secondaryArray,mouseItem) != false || mouseItem == -1)
				{
					if (item != -1)
				{
					scp_itemDrop_slot(slot);
				}
				if(mouseItem != -1)
				{
					scp_itemPickup_slot(slot,mouseItem);
				}
				mouseItem = item;
				}
			}
			else if(slot == 22)
			{
				if(scp_searchArray(obj_inventory.meleeArray,mouseItem) != false || mouseItem == -1)
				{
					if (item != -1)
				{
					scp_itemDrop_slot(slot);
				}
				if(mouseItem != -1)
				{
					scp_itemPickup_slot(slot,mouseItem);
				}
				mouseItem = item;
				}
			}
			else
			{
				if (item != -1)
				{
					scp_itemDrop_slot(slot);
				}
				if(mouseItem != -1)
				{
					scp_itemPickup_slot(slot,mouseItem);
				}
				mouseItem = item;
			}
			
		}
	}
	depth = -100;
	if(inventory = true)
	{
		if(item != -1)
		{
			draw_sprite(spr_items,item,startX + spriteAdd,startY + spriteAdd);
		}
	}
}