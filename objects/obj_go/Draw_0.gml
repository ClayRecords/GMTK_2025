//draw_stacked_sprite(self)

var i = 0;
var total_stop_images = sprite_get_number(spr_stop)
var total_go_images = sprite_get_number(spr_go)
var total_images = max(total_stop_images, total_go_images)
var _x = obj_go.x
var _y = obj_go.y
repeat(total_images) {
	if should_stop{
		draw_sprite_ext(
			spr_stop, total_stop_images-i,
			_x, _y-i,
			image_xscale, image_yscale,
			image_angle, image_blend, image_alpha
		);
	}
	else{
		draw_sprite_ext(
			spr_go, total_go_images-i,
			_x, _y-i,
			image_xscale, image_yscale,
			image_angle, image_blend, image_alpha
		);
	}
	i++;
}