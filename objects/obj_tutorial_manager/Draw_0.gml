/// @description

if (!is_active()) {
	return;
}

var half_width = (sprite_get_width(sprite_index) * image_xscale / 2) - 5;
var half_height = (sprite_get_height(sprite_index) * image_yscale / 2) - 5;
draw_set_colour(#6D758D);
draw_rectangle(x - half_width, y - half_height, x + half_width, y + half_height, false);

draw_set_color(c_white);
draw_set_valign(fa_middle)
draw_set_halign(fa_center);
draw_text(x, y, "Skip tutorial");

event_inherited();