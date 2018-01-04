
scalar = 32;
grenadeEmitter = part_emitter_create(global.gunParticles);
part_emitter_region(global.gunParticles, grenadeEmitter, x - scalar, x + scalar, y + scalar,  y - scalar, ps_shape_diamond, ps_distr_invgaussian );
part_emitter_burst(global.gunParticles, grenadeEmitter, global.grenadeParticles, 100);
part_emitter_destroy(global.gunParticles, grenadeEmitter);