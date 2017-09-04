/// @description Insert description here
// You can write your code in this editor


//detect if the master object exists so if it's destroyed it won't crash the game
if(instance_exists(master))
{
	//make the image rotate when the guard does
	image_angle = master.direction;
	
	//move with the master
	x = master.x;
	y = master.y;
	
	
	if(place_meeting(x,y,obj_player) && !collision_line(master.x,master.y,obj_player.x,obj_player.y,obj_wall,true,true))
	{
		detected = true;
	}
	else detected = false;
	
	
}
else instance_destroy();
