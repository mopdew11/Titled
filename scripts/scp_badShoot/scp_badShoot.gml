if(iShoot > sRan && !collision_line(x,y,obj_player.x,obj_player.y,obj_terrain,true,true)&& dead = false)
{
	//plays shoot sound
	audio_play_sound(snd_badShoot,5,false);
	
	//creates baddie projectile
	projectile = instance_create_depth(x,y,10,obj_badProjectile);
	with(projectile)
	{
		damage = argument[0];
		if(argument_count =2)
		{
			image_xscale = argument[1];
			image_yscale = argument[1];
		}
		
	}
	
	//generates a new frame count to wait
	sRan = irandom_range(10,60);
	
	//resets frame counter
	iShoot = 0;
}
iShoot++;