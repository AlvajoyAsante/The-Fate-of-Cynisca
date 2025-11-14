if (global.game_over) {
    speed = 0;
    // Or, if using manual movement:
    // exit or don't update position variables
	
	//NOT WORKING.... :(
	// Step 1: Get the layer ID by name
	var lay_id = layer_get_id("Ground");

	// Step 2: Get the background element ID from the layer ID
	var bkg_id = layer_background_get_id(lay_id);

	// Step 3: Set the horizontal speed to 0
	layer_background_speed(bkg_id, 0);

}
