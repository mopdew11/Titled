/// @description destroy self on collision
if(instance_exists(obj_player) && obj_player.playerHealth <= 0)
{
	audio_play_sound(snd_death,1,false);
	instance_destroy(obj_player);
}
else if (place_meeting(x,y,obj_player))
{
	audio_play_sound(snd_hit,10,false);
	obj_player.playerHealth -= damage;	
	instance_destroy();
}
if(instance_exists(obj_terrain) && place_meeting(x,y,obj_terrain))
{
	instance_destroy();
}