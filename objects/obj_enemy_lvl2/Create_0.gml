
direction = 0; 
speed_horse= 3;     
enemy_slow_timer = irandom_range(60, 180); 
enemy_is_slow = false
dash_timer = 0;

dash_timer = 0;   
dash_cooldown = irandom_range(60, 180); 
start_idle_timer = room_speed * 5; 
behavior_active = false;     
sprite_index = spr_pos_dash; 
speed = 0; 