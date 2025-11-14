if (keyboard_check_pressed(ord("W"))) {
    if (move_timer <= 0) {
        x += move_distance; // move right (change to y or left for other directions)
        move_timer = move_cooldown;
    }
}

// Reduce the timer each frame
if (move_timer > 0) {
    move_timer -= 1;
}
if (global.game_over) {
    speed = 0;
    // Or, if using manual movement:
    // exit or don't update position variables
}