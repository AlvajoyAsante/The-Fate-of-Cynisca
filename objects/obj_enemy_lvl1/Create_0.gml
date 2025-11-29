// Enemy Create Event
direction = 0; // 0 is right, 180 is left
speed_horse= 2;     // Change 4 to desired speed
enemy_slow_timer = irandom_range(60, 180); // First interval: 1-3 seconds at 60 FPS
enemy_is_slow = false
dash_timer = 0;
// Enemy Step Event
// This automatically moves enemy in its direction
dash_timer = 0;   
dash_cooldown = irandom_range(60, 180); 
start_idle_timer = room_speed * 5; // 5 seconds; room_speed is FPS (e.g. 60)
behavior_active = false;     
sprite_index = spr_zeus_run_day; // Replace with your actual idle sprite name
speed = 0;                    // Don't move during idle// Flag to activate movement/dash after idle