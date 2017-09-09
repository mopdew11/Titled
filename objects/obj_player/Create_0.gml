/// @description initialize variables
//death
globalvar dead;
dead = false;
respawnTime = 3 * room_speed;
respawnX = x;
respawnY = y;


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
i = 0;
maxCharge = 45;
fulli = 16;
talking = false;
globalvar detected;
detected = false;
dir = "down";
prev = 315;

//inventory
globalvar inventory;
inventory = false; 

//weapon selection
primary = 0;
secondary = -1;
melee = 1;