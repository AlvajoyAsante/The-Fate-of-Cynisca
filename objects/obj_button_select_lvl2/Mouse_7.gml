// Inherit the parent event
event_inherited();

if (global.level_unlocked[2]) {
    room_goto(goto_room);
} else {
    show_debug_message("Level 2 is locked!");
}