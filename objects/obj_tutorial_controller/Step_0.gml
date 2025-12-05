// Pause Game
if (keyboard_check_pressed(vk_escape)) {
    if (!instance_exists(obj_pause_menu)) {
        instance_create_depth(0, 0, -9999, obj_pause_menu);
    }
}
