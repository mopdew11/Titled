if(distance_to_point(other.x,other.y)< distance_to_point(xStop,yStop))
{
	xStop = other.x;
	yStop = other.y;
}
inst = instance_create_depth(x,y,depth,obj_lazerCollide)

