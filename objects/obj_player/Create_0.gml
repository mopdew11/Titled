/// @description initialize variables
//class
class = CLASS;
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
if(class = 0)
	movespeed = 5;
else
	movespeed = 3;
sprSpeed = 1;
display_reset(0, true)
playerHealth = 100;
maxHealth = 100;
if(class = 0)
	defense = 0;
else
	defense = 10;
iHealth = 0;
isDead = false;


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

