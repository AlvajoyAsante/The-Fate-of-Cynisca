// Create Event
width = display_get_gui_width();
height = display_get_gui_height();

// Create a screenshot of the game state
// We use the application surface to capture what's currently on screen
if (surface_exists(application_surface)) {
    screen_sprite = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0);
} else {
    // Fallback if surface is lost (rare but possible)
    screen_sprite = -1;
}

// Deactivate all other instances so they stop moving/updating
// We pass 'true' to 'notme' so this pause menu object stays active
instance_deactivate_all(true);

// Menu options
options = ["Help", "Resume", "Exit"];
selected = 0;

menu_state = 0; // 0 = Main, 1 = Help
