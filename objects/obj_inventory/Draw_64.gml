depth = 0;
player = instance_nearest(x,y,obj_player);

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
	
	//draw equipment inventory slots(moves invisible inventory buttons to the slots)
	//the y axis is not being set right, its halfway down the screen
	/*
	columns = 2;
	rows = 2;
	startX = 165;
	startY = 39;
	xOffset = 46;
	yOffset = 52;
	j = 1;
	k = 0;
		
	for(i = maxItems; i <+ maxEquipment; i++)
	{
		if(i < j * columns)
		{
			ypos = startY + (j * yOffset);
			xpos = startX + (k * xOffset);
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
	}*/
	//first equipmet slot
	button[20].startX = 165;
	button[20].startY = 91;

	//second equipmet slot	
	button[21].startX = 211;
	button[21].startY = 91;
	
	//third equipmet slot
	button[22].startX = 165;
	button[22].startY = 143;
	
	//draw passives inventory slots(moves invisible inventory buttons to the slots)
	//first
	button[23].startX = 20;
	button[23].startY = 246;
	
	//second
	button[24].startX = 62;
	button[24].startY = 246;
	
	//third
	button[25].startX = 104;
	button[25].startY = 246;
	
	//4
	button[26].startX = 20;
	button[26].startY = 292;
	
	//5
	button[27].startX = 62;
	button[27].startY = 292;
	
	//6
	button[28].startX = 104;
	button[28].startY = 292;
	
}