// move thunder down until it reaches ground
y += 20; 

if (y >= target_y) {
    y = target_y;
    instance_create_layer(x, y, "Player", obj_hole_static);
    instance_destroy();
}
