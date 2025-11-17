// F5 - Toggle Slow Motion
global.cheat_slow_motion = !global.cheat_slow_motion;

if (global.cheat_slow_motion) {
    game_set_speed(30, gamespeed_fps); // Half speed (assuming 60 FPS normally)
    show_debug_message("CHEAT: Slow Motion ENABLED");
} else {
    game_set_speed(60, gamespeed_fps); // Normal speed
    show_debug_message("CHEAT: Slow Motion DISABLED");
}
