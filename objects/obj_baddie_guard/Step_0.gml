/// @description Insert description here
// You can write your code in this editor
if(detected == true && distance_to_object(obj_player) <= 300)
{
	scp_badShoot(baddieDamage,1.5);
	
	if(!collision_line(x,y,obj_player.x,obj_player.y,obj_non_doors,true,false) && alarm[1] == -1)
	{
		pX = (obj_player.x div 16) * 16 + 8;
		pY = (obj_player.y div 16) * 16 + 8
		alarm[1] = 15;
	}
}

if(baddieHealth <= 0)
{
	scp_dropItemExt(item,iName,iInfo,stack,ammoType,ammo,maxAmmo,fireRate);
	instance_destroy();
}


if(detected == false && path_index = -1)
{
	if(mp_grid_path(global.enemyGrid,enemyPath,x,y,startX,startY,1))
	{
		path_end();
		path_start(enemyPath,3,path_action_stop,false);
		if(path_position = 1)
		{
			path_end();
			path_start(pathName, 2, path_action_reverse, true);
		}
	}
	else path_start(pathName, 2, path_action_stop, true);
	
	
	
	
	
		
}

if(gameStart = true)
{
	path_start(pathName, moveSpeed, path_action_reverse, true);
	gameStart = false;
}