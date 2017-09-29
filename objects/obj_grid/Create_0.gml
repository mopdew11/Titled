/// @description Insert description here
// You can write your code in this editor
cell_width = 16;
cell_height = 16;

hCells = room_width div cell_width;
vCells = room_width div cell_height;

//create grid
global.enemyGrid = mp_grid_create(0,0,hCells,vCells,cell_width,cell_height);

//add walls
mp_grid_add_instances(global.enemyGrid,obj_terrain,true);