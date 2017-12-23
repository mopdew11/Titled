//scp_healthV4();
depth = -99;
healthPercent = obj_player.playerHealth / 100;
hp = 315 * healthPercent;
draw_set_color(c_aqua);
startX = argument0;
startY = argument1;


for(i =0; i < 29;i++)
{
	if(i<12)
	{
		draw_line(startX + 2,startY +i,startX + hp,startY +i);
	}else
	{
		draw_line(startX + 2,startY +i,startX + prev - 1,startY +i);
		hp -= 1
	}
	prev = hp;
}



depth = -100;
maxHp = obj_player.maxHealth / 20;
offset = 64;
for(i = 0; i < maxHp; i++;)
{
	if(i<1)
	{
		draw_sprite_ext(spr_healthBar,0,startX,startY,2,2,0,c_white,1);
	}
	else if(i < (maxHp -1))
	{
		draw_sprite_ext(spr_healthBar,1,startX + (i*offset),startY,2,2,0,c_white,1);
	}else
	{
		draw_sprite_ext(spr_healthBar,2,startX + (i*offset),startY,2,2,0,c_white,1);
	}
}