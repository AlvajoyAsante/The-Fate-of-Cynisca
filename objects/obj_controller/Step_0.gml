// Countdown Logic
if (countdown_timer > 0) {
    countdown_timer -= 1;
} else {
    global.race_started = true;
    // Continue decrementing to time the "GO!" message display (e.g. for 1 second)
    if (countdown_timer > -room_speed) {
        countdown_timer -= 1;
    }
    timer_frames += 1;
}

// Pause Game
if (keyboard_check_pressed(vk_escape)) {
    if (!instance_exists(obj_pause_menu)) {
        instance_create_depth(0, 0, -9999, obj_pause_menu);
    }
}

// Level Progression
if (global.game_over) {
    if (keyboard_check_pressed(vk_enter)) {
        if (room == rm_level_1) {
            room_goto(rm_cs_lvl2_pos);
        } else if (room == rm_level_2) {
            room_goto(rm_cs_lvl3_hades);
        } else if (room == rm_level_3) {
            room_goto(rm_menu_credit);
        } else if (room == rm_level_tutorial) {
            room_goto(rm_menu_main);
        } else {
            // Default fallback
            room_goto(rm_menu_main);
        }
    }
    
    // Keep Restart option available
    if (keyboard_check_pressed(ord("R"))) {
        room_restart();
    }
}




// If you want to stop the timer under some condition, add your logic here
