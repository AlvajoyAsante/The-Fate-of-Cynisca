if (!has_powerup) {
    has_powerup = true;   // Store powerup in inventory
    instance_destroy(other); // Remove powerup instance from room
}
