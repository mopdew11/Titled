/// @description 
if(sprite_index == spr_explosion && damageDone != true)
{
	if(!(collision_line(x,y,other.x,other.y,obj_terrain,true,true)))
	{
		other.playerHealth -= damage;
		damageDone = true;
	}
}