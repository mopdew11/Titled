//scp_lightBlade(damage);
inst = instance_create_depth(x,y,0,obj_lightBlade);
with(inst)
{
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	damage = argument0;
}