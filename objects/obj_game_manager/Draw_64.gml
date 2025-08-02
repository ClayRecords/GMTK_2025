/// @description Draw cents
draw_set_font(fnt_ui);
draw_text(x + 90, y, "Cents:  " + str(cents) + "©");
draw_text(x + 90, y + 40, "Imagination: " + str(imagination));


if (debug) {
	draw_text(room_width - 20, 20, "*");
}