/// @description 
if(sprite_index == spr_explosion)
{
	if(!(collision_line(x,y,other.x,other.y,obj_terrain,true,true)))
	{
		other.baddieHealth -= damage;	
	}
}