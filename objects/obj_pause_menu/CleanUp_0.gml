// Clean Up Event
if (sprite_exists(screen_sprite)) {
    sprite_delete(screen_sprite);
}
// Reactivate everything when the menu is destroyed
instance_activate_all();
