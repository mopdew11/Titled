/// @description move toward player
//declare sp
sp = 5;

if(instance_exists(obj_player))
{
	//find players position and storeit in variables
	nx= instance_nearest(x,y,obj_player).x;
	ny = instance_nearest(x,y,obj_player).y;
	
	//set it to move toward point at speed of sp
	move_towards_point(nx, ny, sp);
}