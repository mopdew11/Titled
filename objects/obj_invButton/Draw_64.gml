/// @description 
if(inventory == true)
{
	item = global.inv[0,slot];
	name = global.inv[1,slot];
	info = global.inv[2,slot];
	stack = global.inv[3,slot];
	ammoType = global.inv[4,slot];
	ammo = global.inv[5,slot];
	maxAmmo = global.inv[6,slot];
	fireRate = global.inv[7,slot];
	
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
					scp_itemPickup_slot(slot,mouseItem,mouseName,mouseInfo,mouseStack,mouseAmmoType,mouseAmmo,mouseMaxAmmo,mouseFireRate);
				}
					mouseItem = item;
					mouseInfo = info;
					mouseName = name;
					mouseStack = stack;
					mouseAmmoType = ammoType;
					mouseAmmo = ammo;
					mouseMaxAmmo = maxAmmo;
					mouseFireRate = fireRate;
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
					scp_itemPickup_slot(slot,mouseItem,mouseName,mouseInfo,mouseStack,mouseAmmoType,mouseAmmo,mouseMaxAmmo,mouseFireRate);
				}
					mouseItem = item;
					mouseInfo = info;
					mouseName = name;
					mouseStack = stack;
					mouseAmmoType = ammoType;
					mouseAmmo = ammo;
					mouseMaxAmmo = maxAmmo;
					mouseFireRate = fireRate;
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
					scp_itemPickup_slot(slot,mouseItem,mouseName,mouseInfo,mouseStack,mouseAmmoType,mouseAmmo,mouseMaxAmmo,mouseFireRate);
				}
					mouseItem = item;
					mouseInfo = info;
					mouseName = name;
					mouseStack = stack;
					mouseAmmoType = ammoType;
					mouseAmmo = ammo;
					mouseMaxAmmo = maxAmmo;
					mouseFireRate = fireRate;
				}
			}
			else if(slot == 23)
			{
				if(scp_searchArray(obj_inventory.headArray,mouseItem) != false || mouseItem == -1)
				{
					if (item != -1)
				{
					scp_itemDrop_slot(slot);
				}
				if(mouseItem != -1)
				{
					scp_itemPickup_slot(slot,mouseItem,mouseName,mouseInfo,mouseStack,mouseAmmoType,mouseAmmo,mouseMaxAmmo,mouseFireRate);
				}
					mouseItem = item;
					mouseInfo = info;
					mouseName = name;
					mouseStack = stack;
					mouseAmmoType = ammoType;
					mouseAmmo = ammo;
					mouseMaxAmmo = maxAmmo;
					mouseFireRate = fireRate;
				}
			}
			else if(slot == 24)
			{
				if(scp_searchArray(obj_inventory.bodyArray,mouseItem) != false || mouseItem == -1)
				{
					if (item != -1)
				{
					scp_itemDrop_slot(slot);
				}
				if(mouseItem != -1)
				{
					scp_itemPickup_slot(slot,mouseItem,mouseName,mouseInfo,mouseStack,mouseAmmoType,mouseAmmo,mouseMaxAmmo,mouseFireRate);
				}
					mouseItem = item;
					mouseInfo = info;
					mouseName = name;
					mouseStack = stack;
					mouseAmmoType = ammoType;
					mouseAmmo = ammo;
					mouseMaxAmmo = maxAmmo;
					mouseFireRate = fireRate;
				}
			}
			else if(slot == 25)
			{
				if(scp_searchArray(obj_inventory.legsArray,mouseItem) != false || mouseItem == -1)
				{
					if (item != -1)
				{
					scp_itemDrop_slot(slot);
				}
				if(mouseItem != -1)
				{
					scp_itemPickup_slot(slot,mouseItem,mouseName,mouseInfo,mouseStack,mouseAmmoType,mouseAmmo,mouseMaxAmmo,mouseFireRate);
				}
					mouseItem = item;
					mouseInfo = info;
					mouseName = name;
					mouseStack = stack;
					mouseAmmoType = ammoType;
					mouseAmmo = ammo;
					mouseMaxAmmo = maxAmmo;
					mouseFireRate = fireRate;
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
					scp_itemPickup_slot(slot,mouseItem,mouseName,mouseInfo,mouseStack,mouseAmmoType,mouseAmmo,mouseMaxAmmo,mouseFireRate);
				}
					mouseItem = item;
					mouseInfo = info;
					mouseName = name;
					mouseStack = stack;
					mouseAmmoType = ammoType;
					mouseAmmo = ammo;
					mouseMaxAmmo = maxAmmo;
					mouseFireRate = fireRate;
			}
			
		}
	}
	depth = -100;
	if(inventory = true)
	{
		if(item != -1)
		{
			draw_sprite(spr_items,item,startX + spriteAdd,startY + spriteAdd);
			if(stack > 1)
			{
				draw_set_color(c_yellow);
				draw_set_font(fnt_large);
				draw_text(startX+(32 - string_width(string(stack))),startY+(32-string_height(string(stack))),string(stack));
			}
			
		}
	}
}
//marked for optimizing