//scp_cameraShake()

if(j < 5 && shake = 0)
	{
	
		camera_set_view_angle(view_camera[0],camera_get_view_angle(view_camera[0])+1);
		j++;
	}
	if(j > 5)
		shake = 1; j = 0;

	
	if(k < 10 && shake == 1)
	{
		camera_set_view_angle(view_camera[0],camera_get_view_angle(view_camera[0])-1);
		k++;
	}
	if(k > 10)
		shake = 0; k = 0;
		
		
shake = 0;
j = 0;
k = 0;