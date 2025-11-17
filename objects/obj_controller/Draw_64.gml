if (global.game_over) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    // Use display/GUI coordinates, not room coordinates
    var center_x = display_get_gui_width() / 2;
    var center_y = display_get_gui_height() / 2;
    
    // Draw text with black outline for visibility
    draw_set_color(c_black);
    for (var i = -2; i <= 2; i++) {
        for (var j = -2; j <= 2; j++) {
            if (i != 0 || j != 0) {
                draw_text(center_x + i, center_y + j, global.result_message);
            }
        }
    }
    
    // Draw main text in bright color
    if (string_pos("Win", global.result_message) > 0) {
        draw_set_color(c_yellow);
    } else {
        draw_set_color(c_red);
    }
    draw_text(center_x, center_y, global.result_message);
    
    // Reset drawing settings
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
