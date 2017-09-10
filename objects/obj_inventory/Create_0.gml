/// @description 
/*
itemID's
empty = -1
starting pistol = 0
starting knife = 1
sword = 2
*/
globalvar maxEquipment;//number of eqipment spaces
maxEquipment = 3;
globalvar maxPassives;//nuber of passive spaces
maxPassives = 6;
globalvar maxItems;//number of inventory spaces
maxItems = 20;

//set up slots for equipment
for(i = 0; i < maxEquipment; i++)
{
	global.eInv[i] = -1;
	eButton[i] = instance_create_layer(0,0,layer,obj_equipButton);
	eButton[i].slot = i;
}
//starting equipment
eButton[0].item = obj_player.primary;
eButton[1].item = obj_player.secondary;
eButton[2].item = obj_player.melee;

//setup slots for passives
for(i = 0; i < maxPassives; i++)
{
	global.pInv[i] = -1;
	pButton[i] = instance_create_layer(0,0,layer,obj_passiveButton);
	pButton[i].slot = i;
}

//setup slots for items
for(i = 0; i < maxItems; i++)
{
	global.inv[i] = -1;
	button[i] = instance_create_layer(0,0,layer,obj_invButton);
	button[i].slot = i;
}

//set up mouse
globalvar mouseItem;
mouseItem = -1;
instance_create_layer(0,0,layer,obj_mouseItem);