draw_self();

if (image_alpha > .55) { 
	draw_set_font(fnt_times_40)

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(x, y, button_text);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}