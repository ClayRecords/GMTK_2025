var i = 0;
repeat(image_number) {
   draw_sprite_ext(sprite_index, image_number-i, x, y-i ,image_xscale  ,image_yscale ,image_angle ,image_blend ,image_alpha )
   i ++
}