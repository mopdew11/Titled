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

//equipment
primary = global.inv[20];
secondary = global.inv[21];
melee = global.inv[22];

//select up
if mouse_wheel_up()
{
	if(selected = 1)
	{
		selected = 0;
	}
	else
	{
		selected = 1;
	}
}
//select down
if mouse_wheel_down()
{
	if(selected = 1)
	{
		selected = 0;
	}
	else
	{
		selected = 1;
	}
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
//alt fire
if(selected == 0)
{
	switch primary
	{
		case 0: scp_charge2(); break;
		default: break;
	}
}
//==================================================================
//primary shooting
if(shoot == 1 && selected == 0)
{
	switch primary
	{
		case 0: audio_play_sound(snd_shoot,5,false); scp_alienGun(10,1); break;
		case 3: audio_play_sound(snd_badShoot,5,false); scp_startingGun(5); break;
		default: break;
	}
}

//secondary shooting
if(shoot == 1 && selected == 1)
{
	switch secondary
	{
		case 3: audio_play_sound(snd_badShoot,5,false); scp_startingGun(5); break; 
	}
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