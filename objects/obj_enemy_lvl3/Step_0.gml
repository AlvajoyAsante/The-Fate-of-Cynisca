if (global.game_over) {
    speed = 0;
}

// CHEAT: Stop Enemy
if (global.cheat_stop_enemy) {
    speed = 0;
}

// Countdown the timer every frame
enemy_slow_timer -= 1;

if (enemy_slow_timer <= 0) {
    if (!enemy_is_slow) {
        // Slow down to speed 1
        speed = 0.5;
        enemy_is_slow = true;
        enemy_slow_timer = irandom_range(30, 90); // Slow duration: 0.5 to 1.5 seconds
    } else {
        // Restore normal speed
        speed = 5;
        enemy_is_slow = false;
        enemy_slow_timer = irandom_range(60, 180); // Normal duration: 1–3 seconds
    }
}

// Move the enemy forward
x += speed;