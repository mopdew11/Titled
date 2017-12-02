if (shake == true)
{
 //Higher values, more shake, lower values, less shake
 var ran_x=random_range(-10,10);
 var ran_y=random_range(-10,10);
 camera_set_view_pos(view_camera[0], view_x+ran_x,view_y+ran_y);
 camera_set_view_target(view_camera[0], obj_player);
}