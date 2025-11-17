// Create firework bursts at intervals
burst_timer++;

if (burst_timer >= burst_interval && total_bursts < max_bursts) {
    // Random position in upper half of screen
    var burst_x = random_range(0, room_width);
    var burst_y = random_range(0, room_height * 0.5);
    
    // Alternate between particle types
    var particle_type = (total_bursts % 2 == 0) ? particle : particle2;
    
    // Create burst of particles
    part_particles_create(particle_system, burst_x, burst_y, particle_type, 30);
    show_debug_message("Burst #" + string(total_bursts + 1) + " at (" + string(burst_x) + ", " + string(burst_y) + ")");
    
    // Reset timer and increment burst count
    burst_timer = 0;
    total_bursts++;
}

// Clean up after all bursts are done
if (total_bursts >= max_bursts && part_particles_count(particle_system) == 0) {
    instance_destroy();
}
