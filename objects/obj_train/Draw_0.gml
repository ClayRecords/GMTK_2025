/// @description Insert description here
// You can write your code in this editor

var i = 0;
repeat(image_number) {
   draw_sprite_ext(sprite_index, image_number-i, x, y-i ,image_xscale  ,image_yscale ,image_angle ,image_blend ,image_alpha )
   i ++
}

if (obj_game_manager.debug) {
	draw_path(train_path, starting_x,starting_y, false);
}
