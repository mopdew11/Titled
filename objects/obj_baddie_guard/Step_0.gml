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
	switch dropItem
	{
		case 0: scp_dropItemExt(5,"Ballistic Ammo","what do I do with this? throw it at 'em?", dropNum,-2,-2,-2,-2);
				instance_destroy();
				break;
		case 1: scp_dropItemExt(13,"Health Pack", "Gibs you 40 health", dropNum3,-2,40,-2,-2);
				instance_destroy();
				break;
		case 2: scp_dropItemExt(9,"Explosive Ammo", "Explodes. be carefull.",dropNum2,-2,-2,-2,-2);
				instance_destroy();
				break;
	}
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