/// @description Insert description here
// You can write your code in this editor
if(detected == true)
{
	scp_badShoot(baddieDamage,3);
	
	if(!collision_line(x,y,obj_player.x,obj_player.y,obj_terrain,true,false) && alarm[1] == -1)
	{
		pX = (obj_player.x div 16) * 16 + 8;
		pY = (obj_player.y div 16) * 16 + 8
		alarm[1] = 15;
	}
}

if(baddieHealth <= 0)
{
	inst = instance_create_layer(x,y,layer,obj_item);
	with(inst)
	{
		ID = instance_nearest(x,y,obj_baddie_guard).item;
	}
	instance_destroy();
}