var message = "Welcome to Cynisca's Life.";
var x1 = 1500 // Center of the screen
var y1 = 100;                     // Y position you want (example)
draw_set_color(c_black);
draw_set_font(fnt_times_40);    // Your font resource
// Center the text horizontally
draw_text(x1 - string_width(message) , y1, message);

var msg2 = "To move, press the up-arrow key";
var x2 = 900; // Your fixed x position
var y2 = 400; // Your fixed y position

draw_set_font(Font_2);

// Calculate width and height of the text box (add padding)
var padding_x = 20;
var padding_y = 10;
var text_width = string_width(msg2);
var text_height = string_height(msg2);
var box_x1 = x2 - text_width - padding_x;
var box_y1 = y2 - padding_y;
var box_x2 = x2 + padding_x / 2;
var box_y2 = y2 + text_height + padding_y / 2;

// Draw opaque background with alpha
draw_set_color(c_white); // semi-transparent white
draw_rectangle(box_x1, box_y1, box_x2, box_y2, false);

// Draw black border rectangle
draw_set_color(c_black);
draw_rectangle(box_x1, box_y1, box_x2, box_y2, true);

// Draw text (use your black color or any)
draw_set_color(c_black);
draw_text(x2 - string_width(msg2), y2, msg2);

var msg3 = "Keep Moving.....";
var x3 = 4500; // Your fixed x position
var y3 = 400; // Your fixed y position

draw_set_font(Font_2);

// Calculate width and height of the text box (add padding)
var padding_x1 = 20;
var padding_y1 = 10;
var text_width1 = string_width(msg2);
var text_height1 = string_height(msg2);
var box_x3 = x3 - text_width - padding_x;
var box_y3 = y3 - padding_y;
var box_x4 = x3 + padding_x / 2;
var box_y4 = y3 + text_height + padding_y / 2;

// Draw opaque background with alpha
draw_set_color(c_white); // semi-transparent white
draw_rectangle(box_x3, box_y3, box_x4, box_y4, false);

// Draw black border rectangle
draw_set_color(c_black);
draw_rectangle(box_x3, box_y3, box_x4, box_y4, true);

// Draw text (use your black color or any)
draw_set_color(c_black);
draw_text(x3 - string_width(msg2), y3, msg3);