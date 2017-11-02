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
	reload = keyboard_check_pressed(ord("R"));
	//inventory toggle
	if(inventoryKey == true && inventory = false)
	{
		inventory = true;
	}
	else if(inventoryKey == true && inventory == true)
	{
		inventory = false;
	}
	//can shoot
	if inventory == false
		canShoot = true;
	else
		canShoot = false;

	//equipment
	primary = global.inv[0,20];
	secondary = global.inv[0,21];
	melee = global.inv[0,22];

	//select up
	if mouse_wheel_up()
	{
		if(selected = 1)
		{
			selected = 0;
			alarm[3] = -1;
		}
		else
		{
			selected = 1;
			alarm[3] = -1;
		}
	}
	//select down
	if mouse_wheel_down()
	{
		if(selected = 1)
		{
			selected = 0;
			alarm[3] = -1;
		}
		else
		{
			selected = 1;
			alarm[3] = -1;
		}
	}

	//ammo set
	pMaxAmmo = global.inv[6,20];
	sMaxAmmo = global.inv[6,21];
	if(global.inv[7,20] != 0)
		pFireRate = room_speed / global.inv[7,20];
	else
		pFireRate = 1;
	if(global.inv[7,21] != 0)
		sFireRate = room_speed / global.inv[7,21];
	else
		sFireRate = 1;
	
	//reload
	if(reload)
	{
		alarm[2] = reloadTime;
		shoot = false;
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
	if(meleekey == true && meleeAmmo != 0)
	{
		switch melee
		{
			case 1: if(!instance_exists(obj_meleeParent))
				{
					audio_play_sound(snd_knife,5,false);
					scp_melee(obj_melee,c_green,10);
				}
				break;
			case 2: if(!instance_exists(obj_meleeParent))
				{
					audio_play_sound(snd_knife,5,false);
					scp_melee(obj_melee,c_red,20);
				}
			case 6: if(!instance_exists(obj_meleeParent))
				{
					audio_play_sound(snd_knife,5,false);
					scp_lightBlade(30);
				}
				break;
		}
	}
	//alt fire
	if(selected == 0)
	{
		if(primaryAmmo != 0)
		{
			switch primary
			{
				case 0: scp_charge2(); break;
				default: break;
			}
		}
	}
	//==================================================================
	//primary shooting
	if(shoot == 1 && selected == 0 && global.inv[5,20] > 0 && canShoot == true && alarm[3] == -1)
	{
		alarm[3] = pFireRate;
		switch primary
		{
			case 0: audio_play_sound(snd_shoot,5,false); scp_alienGun(10,1); global.inv[5,20]--; break;
			case 4:	scp_shotgun(5); global.inv[5,20]--; break;
			case 7: scp_grenadeLauncher(50,3,15,1.1); global.inv[5,20]--;break;
			default: break;
		}
	}

	//secondary shooting
	if(shoot == 1 && selected == 1 && global.inv[5,21] > 0 && canShoot == true && alarm[3] == -1)
	{
		alarm[3] = sFireRate;
		switch secondary
		{
			case 3: audio_play_sound(snd_badShoot,5,false); global.inv[5,21]--; scp_startingGun(5); break; 
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