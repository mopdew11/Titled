//scp_chargeShot

//if charge is pressed
if(charge == true)
{
	//set is charging to true
	isCharging = true;
	
	//playt the charge sound
	audio_play_sound(snd_charge,5,false);
	
	//
	shoot = 0;
	
	//have the charge animation start
	obj_charge.sprite_index = spr_charge;
}
//charge is relesed
if(chargeRelese == true)
{
	//set is charging to false
	isCharging = false;
	
	//stop the sound for charge
	audio_stop_sound(snd_charge);
	//plays the sound for the shot being relesed
	audio_play_sound(snd_shoot,5,false);
	
	//shoot a projectile that is i units big and that does i/15 units of damage
	scp_shoot(i,i/15);
	
	//reset i
	i = 0;
	
	//set the sprite to transparent
	obj_charge.sprite_index = spr_tBubble;
}

//while is still charging and its not mor than the maximum charge
if(isCharging == true && i < maxCharge)
{
	//make sure the sprite is still charging
	obj_charge.sprite_index = spr_charge;
	
	//disable the ability to shoot while charging
	shoot = false;
	
	//increment i
	i++;
}

//while is still charging and is max charge
if(isCharging == true && i == maxCharge)
{
	//have charge visuals
	obj_charge.sprite_index = spr_charge;

	//disable the ability to shoot while charging
	shoot = false;
	
	//wait 15 frames
	if(fulli < 15)
	{
		fulli++;
	}else//play full charge noise
	{
		//play sound
		audio_play_sound(snd_fullCharge,5,false);
		//start counting another 15 frames(length of sound)
		fulli = 0;
	}
}