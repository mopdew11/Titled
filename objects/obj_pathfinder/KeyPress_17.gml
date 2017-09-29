/// @description Insert description here
// You can write your code in this editor
pX = (obj_player.x div 16) * 16 + 8;
pY = (obj_player.y div 16) * 16 + 8;





if(mp_grid_path(global.enemyGrid,enemyPath,x,y,pX,pY,1))
{
	draw_path(enemyPath,x,y,1);
	path_start(enemyPath,4,path_action_stop,false);
}
else draw = "error!";

