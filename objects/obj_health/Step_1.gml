/// @description 
if(instance_exists(obj_player))
{
	if(place_meeting(x,y,obj_player))
	{
		
		addHealth = obj_player.playerHealth + 40;
		if(obj_player.playerHealth < 100)
		{
			audio_play_sound(snd_healthGain,10,false)
			while(obj_player.playerHealth < 100 && obj_player.playerHealth < addHealth)
			{
				obj_player.playerHealth++;
			}
			instance_destroy();		
		}
	}
}