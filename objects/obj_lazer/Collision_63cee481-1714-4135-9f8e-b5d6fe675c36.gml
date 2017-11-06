if(distance_to_point(other.x,other.y)< distance_to_point(xStop,yStop))
{
	xStop = other.x;
	yStop = other.y;
}

inst = instance_create_depth(xStop,yStop,depth,obj_lazerCollide)
