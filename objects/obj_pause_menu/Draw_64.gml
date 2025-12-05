// Draw GUI Event

// Draw the frozen game background
if (sprite_exists(screen_sprite)) {
    draw_sprite_stretched(screen_sprite, 0, 0, 0, width, height);
}

// Draw semi-transparent black overlay
draw_set_alpha(0.6);
draw_set_color(c_black);
draw_rectangle(0, 0, width, height, false);
draw_set_alpha(1);

if (menu_state == 0) {
    // Draw Title
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text_transformed(width / 2, height / 3, "PAUSED", 2, 2, 0);

    // Draw Options
    for (var i = 0; i < array_length(options); i++) {
        var _color = c_white;
        var _scale = 1;
        
        if (i == selected) {
            _color = c_yellow;
            _scale = 1.2;
            draw_text(width / 2 - 100, height / 2 + (i * 60), ">");
        }
        
        draw_set_color(_color);
        draw_text_transformed(width / 2, height / 2 + (i * 60), options[i], _scale, _scale, 0);
    }
} else if (menu_state == 1) {
    // Draw Help Sprite
    var _spr = asset_get_index("spr_help_menu");
    if (sprite_exists(_spr)) {
        var _sw = sprite_get_width(_spr);
        var _sh = sprite_get_height(_spr);
        // Center it
        draw_sprite(_spr, 0, (width - _sw) / 2, (height - _sh) / 2);
    } else {
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_color(c_white);
        draw_text(width / 2, height / 2, "Help Menu Placeholder");
    }
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_color(c_white);
    draw_text(width / 2, height - 50, "Press Esc/Enter to Return");
}

// Reset draw settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
