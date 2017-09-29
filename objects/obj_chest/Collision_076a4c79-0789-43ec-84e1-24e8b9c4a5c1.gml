/// @description 
if(keyboard_check_pressed(ord("E")) && open = false)
{
	inst = instance_create_depth(x,y,-100,obj_item);
	inst.ID = item;
	open = true;
}
