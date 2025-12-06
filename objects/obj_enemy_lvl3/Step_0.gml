
if (!global.race_started) {
    sprite_index = spr_hades_idle;
    speed = 0;
    exit;
}

if (!behavior_active) {
    sprite_index = spr_hades_idle;
    speed = 0;
    start_idle_timer -= 1;
    if (start_idle_timer <= 0) {
        behavior_active = true;
    }
    exit; 
}


image_speed=0.5;
if (global.game_over) {
    speed = 0;
}

// CHEAT: Stop Enemy
if (global.cheat_stop_enemy) {
    speed = 0;
}


// Countdown the timer every frame
enemy_slow_timer -= 1;

if (enemy_slow_timer <= 0) {
    if (!enemy_is_slow) {
        
		sprite_index=spr_hades_slow
        speed = 0.2;
        enemy_is_slow = true;
        enemy_slow_timer = irandom_range(30, 90); 
    } else {
        
		sprite_index=spr_hades_run;
        speed = speed_horse;
        enemy_is_slow = false;
        enemy_slow_timer = irandom_range(60, 180); 
    }
}
// Dash countdown (pre-dash waiting)
if (dash_timer == 0) {
    dash_cooldown -= 1;
    if (dash_cooldown <= 0) {
        // Start dashing!
        dash_timer = irandom_range(30, 60); 
        sprite_index = spr_hades_dash;            
        speed = speed_horse * 1.5;            
        dash_cooldown = irandom_range(30, 90); 
    }
}

// Handle dash duration
if (dash_timer > 0) {
    dash_timer -= 1;
    if (dash_timer == 0) {
        
        speed = speed_horse;
        sprite_index = spr_hades_run;  
    }
}

x += speed;