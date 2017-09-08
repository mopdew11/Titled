player = instance_nearest(x,y,obj_player);
if(player.inventory = true)
{
	//gets the center of the veiw 
	/*
	xCenter = (view_wport[0] / 2) - (sprite_width/2);
	yCenter = (view_hport[0] / 2) - (sprite_height/2);
	*/
	
	//draws the inventory screen
	draw_sprite(spr_background,0,0,0);

	//draw hearts	
	hp = player.playerHealth / 20;
	xOffset = 40;
	yOffset = 30;

	for(i = 0; i <= hp; i++)
	{	
		draw_sprite(spr_heart, 0,235 + (i*xOffset), yOffset);
	}
	
	//draw defense
	draw_set_font(fnt_small);
	draw_text(392,85,player.defense);
	
	columns = 5;
	rows = 4;
	startX = 230;
	startY = 153;
	xOffset = 42;
	yOffset = 46;
	j = 1;
	k = 0;
		
	for(i =0; i < maxItems; i++)
	{							
		if(i < j * columns)
		{
			if(j = 1)
			{
				ypos = startY;
			}else
			{
				ypos = startY + (j * yOffset);
			}			
			xpos = startX + (k * xOffset);
			draw_sprite(spr_items,global.inv[i],xpos,ypos);
			button[i].x = xpos;
			button[i].y = ypos;
			k++;
		}
		else
		{
			k = 0;
			j++;
			i--;
		}
		
		
	}
	
	
	
	
	


}