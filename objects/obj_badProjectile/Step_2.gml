/// @description destroy self on collision
if (place_meeting(x,y,obj_player))
{
	audio_play_sound(snd_hit,10,false);
	obj_player.playerHealth -= damage / (1+(obj_player.defence * .02));
	instance_destroy();
}
if(instance_exists(obj_terrain) && place_meeting(x,y,obj_terrain))
{
	instance_destroy();
}