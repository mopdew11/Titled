/// @description 
/*
itemID's
empty = -1
alien gun = 0
starting knife = 1
sword = 2
starting pistol = 3
shgotgun = 4
ammo = 5
*/
//put the id of the items that are in the category in the proper array
primaryArray = [0,4,7];
secondaryArray = [3];
meleeArray = [1,2,6];

globalvar maxItems;//number of inventory spaces
maxItems = 20;
maxEquipment = maxItems + 3;

//setup slots for items
for(i = 0; i < maxItems; i++)
{
	for (j = 0; j < 8; j++)
	{
		global.inv[j,i] = -1;
	}
	global.button[i] = instance_create_depth(0,0,-100,obj_invButton);
	global.button[i].slot = i;
}
scp_itemPickup(4,"Shotgun", "Shop smart, shop S mart. YOU GOT THAT?",1,8,2,2,0);
scp_itemPickup(6,"Light Blade","Definitely not a lightsaber. Nope. Definitely not.",1,-2,-2,-2,-2);
scp_itemPickup(7,"Grenade launcher","BOOM! headsho...uh...shot near the person.",1,9,6,6,2);

//setup slots for equipment
for(i = maxItems; i <= maxEquipment; i++)
{
	for (j = 0; j < 8; j++)
	{
		global.inv[j,i] = -1;
	}
	global.button[i] = instance_create_depth(0,0,-100,obj_invButton);
	global.button[i].slot = i;
}

scp_itemPickup_slot(21,obj_player.secondary, "Starting pistol","Your basic shooty thing. You know, the thing that shoots",1,5,50,50,6);
scp_itemPickup_slot(22,obj_player.melee,"Knife", "Pronounced Kuh Nife",1,-2,-2,-2,-2);

//SETUP SLOTS FOR PASSIVES(CAPSLOCK)
maxPassives = maxEquipment + 6;
for(i = maxEquipment; i < maxPassives; i++)
{
	for (j = 0; j < 8; j++)
	{
		global.inv[j,i] = -1;
	}
	global.button[i] = instance_create_layer(0,0,layer,obj_invButton);
	global.button[i].slot = i;
}


//set up mouse
globalvar mouseItem;
mouseItem = -1;
globalvar mouseName;
mouseName = -1;
globalvar mouseInfo;
mouseInfo = -1;
globalvar mouseStack;
mouseStack = -1;
globalvar mouseAmmoType;
mouseAmmoType = -1;
globalvar mouseAmmo;
mouseAmmo = -1;
globalvar mouseMaxAmmo;
mouseMaxAmmo = -1;
globalvar mouseFireRate;
mouseFireRate = -1;
instance_create_layer(0,0,layer,obj_mouseItem);