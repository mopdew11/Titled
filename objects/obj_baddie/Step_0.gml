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

//heath check
if(baddieHealth <= 0)
{
	switch dropItem
	{
		case 0: scp_dropItemExt(5,"Ammo","what do I do with this? throw it at 'em?", dropNum,-2,-2,-2,-2);
				instance_destroy();
				break;
		case 1: scp_dropItemExt(8,"Shotgun shells", "She sells shotgun shells at the shotgun store\n...Eh... Doesn't have the same ring to it", dropNum2,-2,-2,-2,-2);
				instance_destroy();
				break;
		case 2: scp_dropItemExt(9,"Grenades", "Explodes. be carefull.",dropNum2,-2,-2,-2,-2);
				instance_destroy();
				break;
	}
}

//increment frame counter
i++;

//shoot
scp_badShoot(baddieDamage);