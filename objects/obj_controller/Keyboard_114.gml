// F3 - Pass All Levels (go to next room)
if (!global.game_over) {
    show_debug_message("CHEAT: Skipping to next level");
    
    // Determine next room
    if (room == rm_level_tutorial) {
        room_goto(rm_level_1);
    } else if (room == rm_level_1) {
        room_goto(rm_level_2);
    } else if (room == rm_level_2) {
        room_goto(rm_level_3);
    } else if (room == rm_level_3) {
        show_debug_message("Already at final level!");
    }
}
