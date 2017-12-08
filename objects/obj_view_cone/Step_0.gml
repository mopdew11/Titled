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
	
	
	
	/*if(place_meeting(x,y,obj_player) && !collision_line(master.x,master.y,obj_player.x,obj_player.y,obj_terrain,true,true))
	{
		alarm[0] = 4 * room_speed;
		detected = true;
	}*/
	
	
	
}
else instance_destroy();

if(global.detected == true)
{
	sprite_index = spr_blank;	
}
else sprite_index = spr_view_cone;
