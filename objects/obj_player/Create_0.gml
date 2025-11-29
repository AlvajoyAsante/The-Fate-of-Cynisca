move_speed = 0;
move_acceleration =20;      // Acceleration per key tap
move_deceleration = 0.3;    // How fast the speed tapers off
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
thunder_triggered = false;
// X positions where each hole will appear
hole_x[0] = 1500;
hole_x[1] = 4500;
hole_x[2] = 7000;

hole_y     = 800;      // same Y for all holes
hole_done[0] = false;
hole_done[1] = false;
hole_done[2] = false;

// how close the player must be for thunder to start
trigger_distance = 500;

move_max_speed   = 5;
move_slow_speed  = 3;
on_hole          = false;

// Powerup inventory flags
has_speed_powerup = false;
has_invincible = false;
speed_powerup_active = false;
speed_powerup_timer = 0;
invincible_active = false;
invincible_timer = 0;
powerup_duration = room_speed * 5;  // 5 seconds
global.current_level = 1;  // Set per room/level

