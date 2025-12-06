// Draw GUI Event

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_times_40); // Use a large font if available, or default
draw_set_color(c_white);

var _y = text_y;
var _spacing = 60; // Space between lines

for (var i = 0; i < array_length(credits); i++) {
    draw_text(width / 2, _y, credits[i]);
    _y += _spacing;
}

// Reset draw settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
