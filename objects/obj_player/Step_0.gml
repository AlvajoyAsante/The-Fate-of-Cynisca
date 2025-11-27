if (slow_active) {
    slow_timer -= 1;
    if (slow_timer <= 0) {
        slow_active   = false;
        move_max_speed = 5;          // back to normal speed
        // Return to normal sprite (idle or run as you already do)
        // e.g. sprite_index = spr_cynisca_run_day;
    }
}



// --- JUMP AND GRAVITY PHYSICS ---
if (y >= ground_level) {
    on_ground = true;
    y = ground_level;
    vspeed = 0;
} else {
    on_ground = false;
}

if (keyboard_check_pressed(vk_space) && on_ground) {
    vspeed = jump_speed;
    sprite_index = Cynisca_day_jump;
    image_speed = 0.5;
}

// Apply gravity and jump movement
if (!on_ground) {
    vspeed += gravity;
    y += vspeed;
    sprite_index = Cynisca_day_jump; // Show jump sprite while airborne
    image_speed = 0.5;
}

// --- ACCELERATION AND MOVEMENT ---
if (keyboard_check_pressed(vk_up)) {
    move_speed += move_acceleration;
}

if (auto_move || keyboard_check_pressed(vk_up)) {
    if (on_ground) {
        sprite_index = spr_cynisca_run_day;
        image_speed = 0.5;
    }
    move_speed += move_acceleration;
}

// --- DECELERATION ---
if (move_speed > 0) {
    move_speed -= move_deceleration;
    if (move_speed < 0) move_speed = 0;
}

// --- CLAMP TO MAX SPEED ---
if (move_speed > move_max_speed) move_speed = move_max_speed;

// --- HORIZONTAL MOVEMENT ---
x += move_speed;

// --- W KEY COUNT ---
if (keyboard_check_pressed(vk_up)) {
    w_press_count += 1;
}

// --- POWERUP CODE ---
if (has_powerup && keyboard_check_pressed(ord("P")) && !powerup_active) {
    powerup_active = true;
    powerup_timer = room_speed * 5;
    show_debug_message("Powerup_online");
    has_powerup = false;
    move_max_speed *= 2;
}

if (powerup_active) {
    powerup_timer -= 1;
    if (powerup_timer <= 0) {
        powerup_active = false;
        move_max_speed = 5;
        show_debug_message("Powerup_offline");
    }
}

// --- ANIMATION LOGIC ---
if (on_ground) {
    if (keyboard_check(vk_up) || auto_move) {
        sprite_index = spr_cynisca_run_day;
        image_speed = 0.5;
    } else {
        sprite_index = spr_cynisca_idle_day;
        image_speed = 0.5;
    }
}
// When NOT on ground, jump code above sets sprite to cynisca_day_jump

// --- CHEAT CODE FOR BOOST ---
if (global.cheat_unlimited_boost) {
    move_speed = move_max_speed;
}
