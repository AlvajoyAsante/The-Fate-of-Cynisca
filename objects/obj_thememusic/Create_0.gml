if (!audio_is_playing(snd_thememusic)) {
    audio_play_sound(snd_thememusic, 1, true);
}

// Force fullscreen on game start (only runs once)
if (!variable_global_exists("game_init_done")) {
    global.game_init_done = true;
    window_set_fullscreen(true);
}