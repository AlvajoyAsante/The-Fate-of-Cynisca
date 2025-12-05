// Step Event

if (menu_state == 0) {
    // Navigation
    if (keyboard_check_pressed(vk_up)) {
        selected--;
        if (selected < 0) selected = array_length(options) - 1;
    }
    if (keyboard_check_pressed(vk_down)) {
        selected++;
        if (selected >= array_length(options)) selected = 0;
    }

    // Selection
    if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
        switch (selected) {
            case 0: // Help
                menu_state = 1;
                break;
            case 1: // Resume
                instance_destroy();
                break;
            case 2: // Exit
                instance_activate_all();
                room_goto(rm_menu_main); 
                break;
        }
    }

    // Close with Esc
    if (keyboard_check_pressed(vk_escape)) {
        instance_destroy();
    }
} else if (menu_state == 1) {
    // Return to main pause menu
    if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
        menu_state = 0;
    }
}
