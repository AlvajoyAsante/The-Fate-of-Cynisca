
if (on_ground && place_meeting(x, y, obj_hole_static)) {
    if (!on_hole) {
        on_hole = true;
        move_max_speed = move_slow_speed; 
    }
} else {
    if (on_hole) {
        on_hole = false;
        move_max_speed = 5; 
    }
}

for (var i = 0; i < 3; i++) {
    if (!hole_done[i]) {
        
        if (abs(x - hole_x[i]) < trigger_distance) {
            hole_done[i] = true;
                      
            if (global.current_level == 2) {
                var strike_x = hole_x[i];
                var strike_y = hole_y-5; 
                var inst = instance_create_layer(strike_x, strike_y, "Player", obj_water_anim);
                inst.target_y = hole_y;
                inst.sprite_index = spr_water_anim;  
            }
            
            else if (global.current_level==1){
				var strike_x = hole_x[i];
                var strike_y = 0;
                var inst = instance_create_layer(strike_x, strike_y, "Player", obj_thunder_anim);
                inst.target_y = hole_y;
            }
			else if (global.current_level==3){
				var strike_x=hole_x[i];
				var strike_y=hole_y-5;
				var inst = instance_create_layer(strike_x, strike_y, "Player", obj_fire_anim);
                inst.target_y = hole_y;
                inst.sprite_index = spr_fire_anim;  
				
			}
			else if (global.current_level==0){
				
			}
			
        }
    }
}


if (y >= ground_level) {
    on_ground = true;
    y = ground_level;
    vspeed = 0;
} else {
    on_ground = false;
}
if (keyboard_check_pressed(vk_control) && on_ground) {
    vspeed = jump_speed;
    move_speed += 10; 
    sprite_index = spr_cynisca_jump_day;
    image_speed = 0.5;
}

if (!on_ground) {
    vspeed += gravity;
    y += vspeed;
    sprite_index = spr_cynisca_jump_day; 
    image_speed = 0.5;
}


if (keyboard_check_pressed(vk_up)) {
    move_speed += move_acceleration;
}

if (auto_move || keyboard_check_pressed(vk_up)) {
    if (on_ground) {
        sprite_index = spr_cynisca_run_day;
        image_speed = 0.5;
    }
    move_speed += move_acceleration;
	audio_play_sound(snd_rollingcart, 1, false,1, 3.91);
}

if (move_speed > 0) {
    move_speed -= move_deceleration;
    if (move_speed < 0) move_speed = 0;
}

if (move_speed > move_max_speed) move_speed = move_max_speed;

x += move_speed;

// --- W KEY COUNT ---
if (keyboard_check_pressed(vk_up)) {
    w_press_count += 1;
}

// --- POWERUP ACTIVATION (P key cycles available powerups) ---
if (keyboard_check_pressed(vk_space)) {
    if (has_speed_powerup && !powerup_active && !invincible_active) {
        powerup_active = true;
        speed_powerup_timer = powerup_duration;
        has_speed_powerup = false;  // Remove from inventory
        move_max_speed *= 2;
        show_debug_message("Speed powerup online");
		audio_play_sound(horse_neigh,1,false);
    }
    else if (has_invincible && !invincible_active && !powerup_active) {
        invincible_active = true;
        invincible_timer = powerup_duration;
        has_invincible = false;     // Remove from inventory
        move_speed = 20;            
        show_debug_message("Invincible online");
    }
}

// Speed powerup timer
if (powerup_active) {
    speed_powerup_timer -= 1;
    if (speed_powerup_timer <= 0) {
        powerup_active = false;
        move_max_speed = 5;  // Reset
        show_debug_message("Speed powerup offline");
    }
}

// Invincible timer & speed lock (overrides everything)
if (invincible_active) {
    invincible_timer -= 1;
    move_speed = 20;  // Constant 8 speed, ignores holes/decel
    if (invincible_timer <= 0) {
        invincible_active = false;
        show_debug_message("Invincible offline");
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


// --- CHEAT CODE FOR BOOST ---
if (global.cheat_unlimited_boost) {
    move_speed = move_max_speed;
}
