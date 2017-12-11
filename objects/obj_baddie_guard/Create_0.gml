/// @description Insert description here
// You can write your code in this editor

//create the view cone
instance_create_depth(x,y,-1,obj_view_cone);
turnTime = 120;

image_speed = 0;

//change direction
alarm[0] = 120;

//initialize everything else
/// @description Initialize
instanceID = instance_id;
moveSpeed = 2;
i = 0;
ran = irandom_range(0,4);
iShoot = 0;
sRan = irandom_range(10, 60);
baddieHealth = 50;
baddieDamage = 50;
enemyPath = path_add();
pathName = path_blank;
startX = x;
startY = y;

//random drops
dropNum = irandom_range(10,30);
dropNum2 = irandom_range(2,10);
dropNum3 = irandom_range(1,2);
dropItem = irandom_range(0,2);

//path_start(pathName, 2, path_action_reverse, true);
gameStart = true;