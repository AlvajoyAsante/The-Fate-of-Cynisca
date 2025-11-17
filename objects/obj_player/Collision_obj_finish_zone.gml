if (!global.game_over) {
    show_debug_message("Player won! Creating fireworks...");
    global.game_over = true;
    global.result_message = "You Win! Press R to Restart";
	speed=0;
	
	// Create fireworks celebration
	instance_create_depth(0, 0, -1000, obj_fireworks);
}
