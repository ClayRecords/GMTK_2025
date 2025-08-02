
function draw_stacked_sprite(obj) {
	var i = 0;
	repeat(obj.image_number) {
		draw_sprite_ext(
			obj.sprite_index, obj.image_number-i,
			obj.x, obj.y-i,
			image_xscale, image_yscale,
			image_angle, image_blend, image_alpha
		);
		i++;
	}
}