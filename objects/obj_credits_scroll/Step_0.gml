// Step Event

// Scroll up
text_y -= scroll_speed;

// Reset or Exit when done
var _spacing = 60;
if (text_y + (array_length(credits) * _spacing) < 0) {
    room_goto(rm_menu_main);
}

// Allow skipping with Esc or Enter
if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_enter)) {
    show_debug_message("Exiting credits via key press");
    room_goto(rm_menu_main);
}
