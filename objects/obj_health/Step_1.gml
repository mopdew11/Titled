/// @description 
if(instance_exists(obj_player))
{
	if(place_meeting(x,y,obj_player))
	{
		
		
		if(obj_player.playerHealth < 100)
		{
			audio_play_sound(snd_healthGain,10,false)
			obj_player.playerHealth += 40;
			instance_destroy();		
		}
	}
}