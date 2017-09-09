/// @description movement
if(dead = false)
{
//get inputs
up = -keyboard_check(ord("W"));
left = -keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
right = keyboard_check(ord("D"));
shoot = mouse_check_button_pressed(mb_left);
charge = mouse_check_button_pressed(mb_right);
chargeRelese = mouse_check_button_released(mb_right);
meleekey = keyboard_check_pressed(ord("F"));
inventoryKey = keyboard_check_pressed(vk_tab);

//inventory toggle
if(inventoryKey == true && inventory = false)
{
	inventory = true;
}
else if(inventoryKey == true && inventory == true)
{
	inventory = false;
}

//determin what direction the player moves by adding inputs
//and then multiplying it by movespeed
moveY = (down + up) * movespeed;
moveX = (right + left) * movespeed;

if(talking = false)
{
	scp_movement();
}

//==================================================================
//melee
if(meleekey == true)
{
	switch melee
	{
		case 1: if(!instance_exists(obj_melee))
			{
				audio_play_sound(snd_knife,5,false);
				scp_melee(obj_melee,c_green,10);
			}
			break;
		case 2: if(!instance_exists(obj_melee))
			{
				audio_play_sound(snd_knife,5,false);
				scp_melee(obj_melee,c_red,20);
			}
			break;
	}
}
//==================================================================
//charge shot
if(charge == true)
{
	isCharging = true;
	audio_play_sound(snd_charge,5,false);
	shoot = 0;
	obj_charge.sprite_index = spr_charge;
}
if(chargeRelese == true)
{
	isCharging = false;
	audio_stop_sound(snd_charge);
	audio_play_sound(snd_shoot,5,false);
	scp_shoot(i,i/15);
	i = 0;
	obj_charge.sprite_index = spr_tBubble;
}
if(isCharging == true && i < maxCharge)
{
	obj_charge.sprite_index = spr_charge;
	shoot = false;
	i++;
}
if(isCharging == true && i == maxCharge)
{
	obj_charge.sprite_index = spr_charge;
	shoot = false;
	if(fulli < 15)
	{
		fulli++;
	}else
	{
		audio_play_sound(snd_fullCharge,5,false)
		fulli = 0;
	}
}


//==================================================================
//shooting
if(shoot == 1)
{
	audio_play_sound(snd_shoot,5,false);
	scp_shoot(10,1);
}

if(playerHealth <= 0)
{
	audio_play_sound(snd_death,1,false);
	dead = true;
	alarm[0] = respawnTime;
}

//keeps player health within boundries
playerHealth = clamp(playerHealth,0,maxHealth);
}else
{
	sprite_index = spr_dead;
}