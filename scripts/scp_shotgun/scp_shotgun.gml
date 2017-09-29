for (i = 0; i < argument0; i++)
{
    Bullet = instance_create_depth(x,y,0,obj_shotgunBullet);
	Bullet.speed = 15;
    Bullet.direction = point_direction(x,y,mouse_x,mouse_y) + random_range(-15,15);
	Bullet.image_angle = direction;
}