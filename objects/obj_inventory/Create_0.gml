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
primaryArray = [0,4];
secondaryArray = [3];
meleeArray = [1,2];

globalvar maxItems;//number of inventory spaces
maxItems = 20;

//setup slots for items
for(i = 0; i < maxItems; i++)
{
	global.inv[i] = -1;
	button[i] = instance_create_depth(0,0,-100,obj_invButton);
	button[i].slot = i;
}
global.inv[0] = 4;//test item

maxEquipment = maxItems + 3;
//setup slots for equipment
for(i = maxItems; i <+ maxEquipment; i++)
{
	global.inv[i] = -1;
	button[i] = instance_create_depth(0,0,-100,obj_invButton);
	button[i].slot = i;
}
scp_itemPickup_slot(20,obj_player.primary);
scp_itemPickup_slot(21,obj_player.secondary);
scp_itemPickup_slot(22,obj_player.melee);

//SETUP SLOTS FOR PASSIVES(CAPSLOCK)
maxPassives = maxEquipment + 6;
for(i = maxEquipment; i < maxPassives; i++)
{
	global.inv[i] = -1;
	button[i] = instance_create_layer(0,0,layer,obj_invButton);
	button[i].slot = i;
}


//set up mouse
globalvar mouseItem;
mouseItem = -1;
instance_create_layer(0,0,layer,obj_mouseItem);