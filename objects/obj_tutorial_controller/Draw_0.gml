var message = "Welcome to Cynisca's Life.";
var x1 = 1500 
var y1 = 100;                     
draw_set_color(c_black);
draw_set_font(fnt_times_40);   

draw_text(x1 - string_width(message) , y1, message);

var msg2 = "To move, press the up-arrow key";
var x2 = 900; 
var y2 = 400; 

draw_set_font(Font_2);


draw_set_color(c_black);
draw_text(x2 - string_width(msg2), y2, msg2);

var msg3 = "Keep Moving.....";
var x3 = 4500; 
var y3 = 400; 

draw_set_font(Font_2);

draw_set_color(c_black);
draw_text(x3 - string_width(msg2), y3, msg3);

var msg5 = "This here is a powerup, grab it and press P to activate it"
var x5 = 6600; 
var y5 = 400; 

draw_set_font(Font_2);


draw_set_color(c_black);
draw_text(x5 - string_width(msg5), y5, msg5);

var msg6 = "But remember it lasts only for 5 seconds "
var x6 = 6600; 
var y6 = 450; 

draw_set_font(Font_2);


draw_set_color(c_black);
draw_text(x6 - string_width(msg6), y6, msg6);

var msg7 = "Pass through that and reclaim what is yours "
var x7 = 8000; 
var y7 = 400; 

draw_set_font(Font_2);

draw_set_color(c_black);
draw_text(x7 - string_width(msg7), y7, msg7);