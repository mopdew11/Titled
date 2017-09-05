//81-100 health
if(argument0 < 90)
{
	draw_sprite(spr_heart,1,0,5);
}
else if(argument0 < 80)
{
	draw_sprite(spr_halfHeart,1,0,5);
}
else
{
	draw_sprite(spr_emptyHeart,1,0,5);
}

//61-80 health
if(argument0 < 80)
{
	draw_sprite(spr_heart,1,37,5);
}
else if(argument0 < 70)
{
	draw_sprite(spr_halfHeart,1,37,5);
}
else
{
	draw_sprite(spr_emptyHeart,1,37,5);
}

//41-60 health
if(argument0 < 50)
{
	draw_sprite(spr_heart,1,74,5);
}
else if(argument0 < 40)
{
	draw_sprite(spr_halfHeart,1,74,5);
}
else
{
	draw_sprite(spr_emptyHeart,1,74,5);
}

//21-40 health
if(argument0 < 30)
{
	draw_sprite(spr_heart,1,111,5);
}
else if(argument0 < 10)
{
	draw_sprite(spr_halfHeart,1,111,5);
}
else
{
	draw_sprite(spr_emptyHeart,1,111,5);
}

//1-20
//20-40 health
if(argument0 < 10)
{
	draw_sprite(spr_heart,1,148,5);
}
else if(argument0 < 0)
{
	draw_sprite(spr_halfHeart,1,148,5);
}
else
{
	draw_sprite(spr_emptyHeart,1,148,5);
}
