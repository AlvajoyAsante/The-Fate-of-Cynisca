// Inherit the parent event
event_inherited();

if (global.level_unlocked[3]) {
    room_goto(goto_room);
} else {
    show_debug_message("Level 3 is locked!");
}