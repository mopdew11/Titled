
if(slot1 != -1)
{
	switch slot1
	{
		case 10: draw_sprite(spr_snowHead,index,x-8,y-3);
		case 14: draw_sprite(spr_scrapHead,index,x-8,y-3);
	}
}
if(slot2 != -1)
{
	switch slot2
	{
		case 11: draw_sprite(spr_snowBody,index,x-8,y+2);
		case 15: draw_sprite(spr_scrapBody,index,x-8,y+2);
	}
}
if(slot3 != -1)
{
	switch slot3
	{
		case 12: draw_sprite(spr_snowLegs,index,x-8,y+7);
		case 16: draw_sprite(spr_scrapLegs,index,x-8,y+7);
	}
}