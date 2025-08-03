draw_self();

var padding = 16;
draw_sprite(
	sprite,
	-1,
	x + padding + sprite_get_width(sprite) / 2,
	y + padding + sprite_get_height(sprite) / 2
);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(
	x + padding + sprite_get_width(sprite),
	y + padding * 2,
	text
)