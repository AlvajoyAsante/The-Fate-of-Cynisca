move_speed = 0;
move_acceleration = 10;      // Acceleration per key tap
move_deceleration = 0.3;    // How fast the speed tapers off
move_max_speed = 5;         // Maximum speed
w_press_count = 0;
finish_spawned = false;
marker_instance = noone;
marker_timer = 0;
powerup_active = false;
powerup_timer = 0;
has_powerup = false;  
auto_move = false;
gravity = 1;
jump_speed = -15;
vspeed = 0;
on_ground = true; // Start on ground, adjust as needed
ground_level = y; // Set this to your ground/platform y value when spawning
move_max_speed = 5;        // your normal max speed
slow_active    = false;
slow_timer     = 0;


// Whether player has a powerup in inventory

