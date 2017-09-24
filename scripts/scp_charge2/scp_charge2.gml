//start charging
if(charge = true)
{
	isCharging = true;
	
	audio_play_sound(snd_charge, 5, false)	
	
	shoot = 0;
	
	obj_charge.sprite_index = spr_charge;
}

//while charging
if(isCharging == true)
{
	if(chargeVal <= maxCharge)//charge
	{
		chargeVal++;
	}
	else//at fullcharge
	{
		if(j < 15)//play fullcharge sound...
		{
			j++;//...every 15 frames
			
		}	
		else
		{
			audio_play_sound(snd_fullCharge,5,false);
			j = 0;//remove this for ear death
		}
	}
}

if(chargeRelese == true)//stop charging
{
	isCharging = false;
	
	obj_charge.sprite_index = spr_tBubble;
	
	audio_stop_sound(snd_charge);
	audio_play_sound(snd_shoot,5,false);
	
	scp_alienGun(chargeVal,chargeVal/15);
	
	chargeVal = 0;
}