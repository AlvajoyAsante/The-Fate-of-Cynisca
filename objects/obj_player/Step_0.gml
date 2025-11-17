// Add acceleration when key is held or pressed
if (keyboard_check_pressed(vk_up)) {        // Or use pressed for step-by-step
    move_speed += move_acceleration;
}
//show_debug_message(layer_background_get_id("Ground"))
//layer_vspeed(layer_background_get_id("Ground"), -10);

// Decelerate smoothly
if (move_speed > 0) {
    move_speed -= move_deceleration;
    if (move_speed < 0) move_speed = 0;
	
	
	
}

// Clamp to max
if (move_speed > move_max_speed) move_speed = move_max_speed;

// Actually move the player (side-scroller: x-axis; or use y for vertical)
x += move_speed;
// Count W key presses
if (keyboard_check_pressed(vk_up)) {
    w_press_count += 1;
    // Optionally, movement code here...
}
if (has_powerup && keyboard_check_pressed(vk_space) && !powerup_active) {
    powerup_active = true;
    powerup_timer = room_speed * 5;
	// 5 seconds duration, assuming room_speed = FPS
	show_debug_message("Powerup_online");

    has_powerup = false;

    // Example effect: Increase player speed temporarily
    move_max_speed *= 2; // Double max speed during powerup
}
if (powerup_active) {
    powerup_timer -= 1;

    if (powerup_timer <= 0) {
        powerup_active = false;
        
        // Reset effect, e.g. restore player speed to original
        move_max_speed = 5;
		show_debug_message("Powerup_offline");
		
    }
}

// CHEAT: Unlimited Boost - keep speed at max
if (global.cheat_unlimited_boost) {
    move_speed = move_max_speed;
}

