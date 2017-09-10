depth = 0;
player = instance_nearest(x,y,obj_player);
player.primary = eButton[0];
player.secondary = eButton[1];
player.melee = eButton[2];
if(inventory = true)
{
	//draws the inventory screen
	draw_sprite(spr_background,0,0,0);

	//draw hearts
	hp = player.playerHealth / 20;
	xOffset = 235;
	yOffset = 30;
	scp_healthV4(xOffset,yOffset);
	
	//draw defense
	draw_set_font(fnt_small);
	draw_text(392,85,player.defense);
	
	//draw inventory slots(moves invisible inventory buttons to the slots)
	columns = 5;
	rows = 4;
	startX = 230;
	startY = 107;
	xOffset = 42;
	yOffset = 46;
	j = 1;
	k = 0;
		
	for(i =0; i < maxItems; i++)
	{
		if(i < j * columns)
		{			
			ypos = startY + (j * yOffset);
			xpos = startX + (k * xOffset);
			//draw_sprite(spr_items,global.inv[i],xpos,ypos);
			button[i].startX = xpos;
			button[i].startY = ypos;
			k++;
		}
		else
		{
			k = 0;
			j++;
			i--;
		}				
	}
	
	//draw equipment slots(moves invisible inventory buttons to the slots)
	columns = 2;
	rows = 2;
	startX = 165;
	startY = 39;
	xOffset = 46;
	yOffset = 52;
	j = 1;
	k = 0;
		
	for(i =0; i < maxEquipment; i++)
	{
		if(i < j * columns)
		{			
			ypos = startY + (j * yOffset);
			xpos = startX + (k * xOffset);
			eButton[i].startX = xpos;
			eButton[i].startY = ypos;
			k++;
		}
		else
		{
			k = 0;
			j++;
			i--;
		}
	}
	
	//draw passives slots(moves invisible inventory buttons to the slots)
	columns = 3;
	rows = 2;
	startX = 20;
	startY = 200;
	xOffset = 42;
	yOffset = 46;
	j = 1;
	k = 0;
		
	for(i =0; i < maxPassives; i++)
	{
		if(i < j * columns)
		{			
			ypos = startY + (j * yOffset);
			xpos = startX + (k * xOffset);			
			pButton[i].startX = xpos;
			pButton[i].startY = ypos;
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