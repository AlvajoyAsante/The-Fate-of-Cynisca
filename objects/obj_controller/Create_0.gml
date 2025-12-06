global.game_over = false;
global.result_message = "";

timer_frames = 0;

// Level Unlock System
if (!variable_global_exists("level_unlocked")) {
    global.level_unlocked = [];
    global.level_unlocked[1] = true;  // Level 1 is always open
    global.level_unlocked[2] = false;
    global.level_unlocked[3] = false;
}

// Countdown variables
global.race_started = false;
countdown_timer = room_speed * 5; // 5 seconds

// Cheat code flags
global.cheat_unlimited_boost = false;
global.cheat_stop_enemy = false;
global.cheat_invincibility = false;
global.cheat_slow_motion = false;
