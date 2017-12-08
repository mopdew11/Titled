/// @description initialize variables
//class
class = CLASS;

//swoosh
if(class = 0)
	instance_create_depth(x,y,depth +1,obj_swoosh);

//death
globalvar dead;
dead = false;
respawnTime = 3 * room_speed;
respawnX = x;
respawnY = y;

counter = 1;

//reload times
reloadTime = 1*room_speed; 

//other things

sprSpeed = 1;
display_reset(0, true)
playerHealth = 100;
maxHealth = 100;

//class defense
if(class = 0)
	defense = 0;
else
	defense = 10;
//class speed
if(class = 0)
	canSprint = true;
else
	canSprint = false;
moveSpeed = 5;
sprintSpeed = 7;
sprint = false;

//random crap
iHealth = 0;
isCharging = false;
j = 16;
maxCharge = 45;
chargeVal = 0;

talking = false;
globalvar detected;
detected = false;

dir = "down";
prev = 315;

//inventory
globalvar inventory;
inventory = false;
canShoot = true;


//weapon selection
selected = 1;
primary = -1;
secondary = 3;
melee = 1;

//armor
head = -1;
body = -1;
legs = -1;
boots = -1;
//instance_create_depth(x,y,depth,obj_armor);

//ammo
primaryAmmo = 0;
secondaryAmmo = 50;
meleeAmmo = -1;

pMaxAmmo = 0;
sMaxAmmo = 0;

//fireRate
pFireRate = 0;
sFireRate = 0;

spriteAdd = 32;

//camerashake
j = 0;

badCone = "none"