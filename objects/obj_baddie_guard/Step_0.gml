/// @description Insert description here
// You can write your code in this editor
if(detected == true)
{
	scp_badShoot(baddieDamage,3);
}

if(baddieHealth <= 0)
{
	instance_create_layer(x,y,layer,obj_sword);
	instance_destroy();
}