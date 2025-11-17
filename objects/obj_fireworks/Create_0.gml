// Create particle system
particle_system = part_system_create();
part_system_depth(particle_system, -1000);
part_system_automatic_draw(particle_system, true);
part_system_automatic_update(particle_system, true);

// Create particle type for fireworks
particle = part_type_create();
part_type_shape(particle, pt_shape_flare);
part_type_size(particle, 0.3, 0.8, -0.02, 0);
part_type_color3(particle, c_red, c_yellow, c_orange);
part_type_alpha3(particle, 1, 0.8, 0);
part_type_speed(particle, 2, 6, -0.1, 0);
part_type_direction(particle, 0, 360, 0, 0);
part_type_gravity(particle, 0.2, 270);
part_type_life(particle, 30, 60);
part_type_blend(particle, true);

// Create second particle type (blue/white fireworks)
particle2 = part_type_create();
part_type_shape(particle2, pt_shape_star);
part_type_size(particle2, 0.3, 0.8, -0.02, 0);
part_type_color3(particle2, c_blue, c_aqua, c_white);
part_type_alpha3(particle2, 1, 0.8, 0);
part_type_speed(particle2, 2, 6, -0.1, 0);
part_type_direction(particle2, 0, 360, 0, 0);
part_type_gravity(particle2, 0.2, 270);
part_type_life(particle2, 30, 60);
part_type_blend(particle2, true);

// Timing variables
burst_timer = 0;
burst_interval = 15; // frames between bursts
total_bursts = 0;
max_bursts = 30; // total number of firework bursts

show_debug_message("Fireworks object created! Particle system ID: " + string(particle_system));
