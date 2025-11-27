// Place at top of Step Event
if (!behavior_active) {
    sprite_index = spr_zeus_idle;
    speed = 0;
    start_idle_timer -= 1;
    if (start_idle_timer <= 0) {
        behavior_active = true;
    }
    exit; // Don't process rest of behavior while idle
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
        // Slow down to speed 1
		sprite_index=spr_zeus_walk
        speed = 0.5;
        enemy_is_slow = true;
        enemy_slow_timer = irandom_range(30, 90); // Slow duration: 0.5 to 1.5 seconds
    } else {
        // Restore normal speed
		sprite_index=spr_zeus_run_day
        speed = speed_horse;
        enemy_is_slow = false;
        enemy_slow_timer = irandom_range(60, 180); // Normal duration: 1–3 seconds
    }
}
// Dash countdown (pre-dash waiting)
if (dash_timer == 0) {
    dash_cooldown -= 1;
    if (dash_cooldown <= 0) {
        // Start dashing!
        dash_timer = irandom_range(10, 30); // Dash will last 0.17–0.5 seconds at 60 FPS
        sprite_index = spr_zeus_dash;            // Your dash sprite
        speed = speed_horse * 2;            // Dash speed
        dash_cooldown = irandom_range(60, 180); // Schedule next dash
    }
}

// Handle dash duration
if (dash_timer > 0) {
    dash_timer -= 1;
    if (dash_timer == 0) {
        // Done dashing, revert to normal
        speed = speed_horse;
        sprite_index = spr_zeus_run_day;  // Your regular running sprite
    }
}

x += speed;