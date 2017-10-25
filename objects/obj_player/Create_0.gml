/// @description initialize variables
//death
globalvar dead;
dead = false;
respawnTime = 3 * room_speed;
respawnX = x;
respawnY = y;

counter = 1;

//other things
movespeed = 5;
sprSpeed = 1;
display_reset(0, true)
playerHealth = 100;
maxHealth = 100;
defense = 0;
iHealth = 0;
//measured in seconds
invinceTime = 2;
invincible = false;
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