global.gunParticles = part_system_create();
//Grenade Particles
global.grenadeParticles = part_type_create();

part_type_shape(global.grenadeParticles, pt_shape_pixel);
part_type_size(global.grenadeParticles, 3, 7, -2, 0);
part_type_scale(global.grenadeParticles, 1, 1);
part_type_color2(global.grenadeParticles, c_yellow, c_red);
part_type_speed(global.grenadeParticles, 0.5, 5, -0.1, 0);
part_type_direction(global.grenadeParticles, 0, 359, 0, 0 );
part_type_life(global.grenadeParticles, 60, 120);


