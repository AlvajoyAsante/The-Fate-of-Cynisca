// Add acceleration when key is held or pressed
if (keyboard_check_pressed(ord("W"))) {        // Or use pressed for step-by-step
    move_speed += move_acceleration;
}

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
if (keyboard_check_pressed(ord("W"))) {
    w_press_count += 1;
    // Optionally, movement code here...
}

