video_open(video_name)

// Force fullscreen on game start (only runs once)
if (!variable_global_exists("game_init_done")) {
    global.game_init_done = true;
    window_set_fullscreen(true);
}