//draw hearts
xOffset = 40;
yOffset = 4;
maxHp = maxHealth / 20;
hp = playerHealth / 20;

if(hp != maxHp)
{
	
	floorHealth = floor(modHealth);
	modHealth = (maxHp mod hp) - floorHealth;
	
//	divHealth = maxHp div hp;
	
}
else
{
	modHealth = 0;
	floorHealth = 5;
}

j = 0;

/*draw empty hearts
for(i = 0; i < maxHp; i++)
{	
	draw_sprite(spr_emptyHeart, 0, 4 + (i*xOffset), yOffset);
}
*/
//draw whole hearts
for(i = 0; i < floorHealth; i++)
{	
	draw_sprite(spr_heart, 0, 4 + (i*xOffset), yOffset);
	j = i;
}

//half heart offset
j++;

//draw halfHearts
if(modHealth > .4)
{
	draw_sprite(spr_halfHeart,0,4 + (j * xOffset), yOffset);
}