// F2 - Toggle Stop Enemy
global.cheat_stop_enemy = !global.cheat_stop_enemy;

if (global.cheat_stop_enemy) {
    show_debug_message("CHEAT: Stop Enemy ENABLED");
} else {
    show_debug_message("CHEAT: Stop Enemy DISABLED");
}
