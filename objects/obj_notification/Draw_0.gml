draw_self();

var padding = 16;
draw_sprite_ext(
	sprite,
	-1,
	x + padding + sprite_get_width(sprite) / 2,
	y + padding + sprite_get_height(sprite) / 2,
	1, 1, 0, c_white,
	image_alpha
);

draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(image_alpha);
draw_text_transformed(
	x + padding * 2 + sprite_get_width(sprite),
	y + padding * 2.5,
	text,
	0.75, 0.75, 0
)
draw_set_alpha(1);