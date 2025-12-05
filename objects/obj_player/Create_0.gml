move_speed = 10;
move_acceleration =30;      // Acceleration per key tap
move_deceleration = 0.1;    // How fast the speed tapers off
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
on_ground = true; 
ground_level = y; 
move_max_speed = 5;        
slow_active    = false;
slow_timer     = 0;
thunder_triggered = false;
hole_x[0] = 3500;
hole_x[1] = 6500;
hole_x[2] = 8000;
hole_y     = 800;      
hole_done[0] = false;
hole_done[1] = false;
hole_done[2] = false;

trigger_distance = 500;


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

