// Enemy Create Event
direction = 0; // 0 is right, 180 is left
speed = 5;
enemy_slow_timer = irandom_range(60, 180); // First interval: 1-3 seconds at 60 FPS
enemy_is_slow = false;// Change 4 to desired speed

// Enemy Step Event
// This automatically moves enemy in its direction
