if (global.game_over) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(room_width/2, room_height/2, global.result_message);
}

show_debug_message("Draw GUI running");


// Convert frame count to seconds and milliseconds
var seconds = timer_frames div room_speed;
var hundredths = ((timer_frames mod room_speed) * 100) div room_speed;;

var ms_str = string(hundredths);
if (hundredths < 10) ms_str = "0" + ms_str;
var timer_text = string(seconds) + ":" + ms_str;


// Determine right-side position (e.g., 50 pixels from top and right)
var x_pos = display_get_width() - 200; // Adjust 200 px as needed
var y_pos = 50;

// Draw timer text
draw_set_color(c_black);
draw_set_font(Game_Font);
 // Use a font you created for timers, or omit for default
draw_text(x_pos, y_pos, timer_text);
show_debug_message("Timer: " + timer_text)
draw_text(1200, 20, "Timer:" + timer_text);

