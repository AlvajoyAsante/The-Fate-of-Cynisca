// Create the actual hole when water animation finishes
instance_create_layer(x, y, "Player", obj_hole_static_hades);

// Destroy the water animation object
instance_destroy();
