if(xStop != 0 && yStop != 0)
{
		stop = point_distance(x,y,xStop,yStop);
		draw_sprite_general(spr_lazer,0,0,0,stop,6,x,y,image_xscale,image_yscale,image_angle,image_blend,image_blend,image_blend,image_blend,image_alpha);
}
else
{
	draw_self();
}
with inst
{
	posX = other.xStop;
	posY = other.yStop;
	direction = point_direction(posX,posY,obj_player.x,obj_player.y)
}