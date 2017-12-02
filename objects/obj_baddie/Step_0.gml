/// @description movement

//if it has been 10 frames scince random number was last generated
if(i > 30)
{
	//generate a new random number
	ran = irandom_range(0,4);
	
	//reset frame counter
	i = 0;
}
//if it hasnt been 30 frames
else{
	//chooses a direction to go in based on random number
	switch ran
	{
		//0 is down
		case 0: scp_collition(false, moveSpeed);break;
		//1 is up
		case 1: scp_collition(false, -moveSpeed);break;
		//2 is left
		case 2: scp_collition(true, -moveSpeed);break;
		//3 is right
		case 3: scp_collition(true, moveSpeed);break;
		//4 is stop
		case 4: break;	
	}	
}
//increment frame counter
i++;


//shoot

//if it has been sRan frames scince last shot
if(iShoot > sRan)
{
	//plays shoot sound
	audio_play_sound(snd_badShoot,5,false);
	
	//creates baddie projectile
	instance_create_depth(x,y,10,obj_badProjectile);
	
	//generates a new frane count to wait
	sRan = irandom_range(10,60);
	
	//resets frame counter
	iShoot = 0;
}
iShoot++;