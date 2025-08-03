if (!quantity) {
	image_alpha = 0.5;
}
else {
	image_alpha = 1;
}

draw_self();
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text_transformed(
	x + sprite_width / 2 - 8,
	y + sprite_height / 2,
	str(quantity),
	2,
	2,
	0
);