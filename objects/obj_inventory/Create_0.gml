/// @description 
/*
itemID's
starting pistol = 0
starting knife = 1
sword = 2
*/

globalvar maxItems;//number of inventory spaces
globalvar maxItems;
maxItems = 20;

for(i = 0; i < maxItems; i++)
{
	global.inv[i] = 2;
	button[i] = instance_create_depth(0,0,100,obj_invButton);
	button[i].slot = i;	
}

globalvar mouseItem;
mouseItem = -1;
instance_create_layer(0,0,layer,obj_mouseItem);