/// @description Insert description here
// You can write your code in this editor


if(mp_grid_path(global.enemyGrid,enemyPath,x,y,pX,pY,1))
{
	path_end();
	path_start(enemyPath,moveSpeed,path_action_stop,false);
}