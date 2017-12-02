///scp_grenadeLauncher(damage,fuse time, speed, friction)
inst = instance_create_depth(x,y,depth,obj_grenade);
with(inst)
{
	damage = argument0;
	alarm[0] = argument1 * room_speed;
	spd = argument2;
	move_towards_point(mouse_x,mouse_y,spd);
	frict = argument3;
	damageDone = false;
}