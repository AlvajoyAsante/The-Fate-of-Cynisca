if (!global.game_over) {
    show_debug_message("Player won! Creating fireworks...");
    global.game_over = true;
    global.result_message = "You Win! Press Enter to Continue";
	speed=0;
	
    // Save Best Time for Level 1
    if (room == rm_level_1) {
        if (!variable_global_exists("level1_best_time")) {
            global.level1_best_time = -1;
        }
        
        // Get current time from controller
        if (instance_exists(obj_controller)) {
            var _current_time = obj_controller.timer_frames;
            
            // Update if it's the first time or a better time (lower is better)
            if (global.level1_best_time == -1 || _current_time < global.level1_best_time) {
                global.level1_best_time = _current_time;
            }
        }
        // Unlock Level 2
        global.level_unlocked[2] = true;
    }
    // Save Best Time for Level 2
    else if (room == rm_level_2) {
        if (!variable_global_exists("level2_best_time")) {
            global.level2_best_time = -1;
        }
        
        if (instance_exists(obj_controller)) {
            var _current_time = obj_controller.timer_frames;
            if (global.level2_best_time == -1 || _current_time < global.level2_best_time) {
                global.level2_best_time = _current_time;
            }
        }
        // Unlock Level 3
        global.level_unlocked[3] = true;
    }
    // Save Best Time for Level 3
    else if (room == rm_level_3) {
        if (!variable_global_exists("level3_best_time")) {
            global.level3_best_time = -1;
        }
        
        if (instance_exists(obj_controller)) {
            var _current_time = obj_controller.timer_frames;
            if (global.level3_best_time == -1 || _current_time < global.level3_best_time) {
                global.level3_best_time = _current_time;
            }
        }
    }

	// Create fireworks celebration
	instance_create_depth(0, 0, -1000, obj_fireworks);
}
auto_move = true;
