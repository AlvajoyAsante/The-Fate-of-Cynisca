// Initialize global variable if it doesn't exist
if (!variable_global_exists("level1_best_time")) {
    global.level1_best_time = -1;
}

image_speed = 0; // Stop animation

// Set frame based on best time
if (global.level1_best_time == -1) {
    image_index = 0; // 0 stars (not played yet)
} else {
    // Define thresholds (assuming 60fps)
    // 3 stars: < 45 seconds (2700 frames)
    // 2 stars: < 60 seconds (3600 frames)
    // 1 star: < 90 seconds (5400 frames)
    // 0 stars: > 90 seconds
    
    var _time = global.level1_best_time;
    
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
