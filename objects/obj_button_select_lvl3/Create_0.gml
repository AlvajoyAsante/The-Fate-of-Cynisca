// Initialize global variable if it doesn't exist
if (!variable_global_exists("level3_best_time")) {
    global.level3_best_time = -1;
}

// Ensure level unlock system is initialized
if (!variable_global_exists("level_unlocked")) {
    global.level_unlocked = [];
    global.level_unlocked[1] = true;  // Level 1 is always open
    global.level_unlocked[2] = false;
    global.level_unlocked[3] = false;
}

image_speed = 0; // Stop animation

// Set frame based on best time
if (global.level3_best_time == -1) {
    image_index = 0; // 0 stars (not played yet)
} else {
    // Define thresholds (assuming 60fps)
    // 3 stars: < 45 seconds (2700 frames)
    // 2 stars: < 60 seconds (3600 frames)
    // 1 star: < 90 seconds (5400 frames)
    // 0 stars: > 90 seconds
    
    var _time = global.level3_best_time;
    
    if (_time < 2700) {
        image_index = 3; // 3 stars
    } else if (_time < 3600) {
        image_index = 2; // 2 stars
    } else if (_time < 5400) {
        image_index = 1; // 1 star
    } else {
        image_index = 0; // 0 stars
    }
}

// Visual Lock Indicator
if (!global.level_unlocked[3]) {
    image_alpha = 0.5; // Dim the button if locked
    image_blend = c_gray;
} else {
    image_alpha = 1;
    image_blend = c_white;
}
