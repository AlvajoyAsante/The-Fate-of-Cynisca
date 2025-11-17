// F6 - Teleport to Finish
if (instance_exists(obj_player) && instance_exists(obj_finish_zone)) {
    var finish = instance_find(obj_finish_zone, 0);
    obj_player.x = finish.x - 100; // Place player just before finish line
    show_debug_message("CHEAT: Teleported to finish line");
}
