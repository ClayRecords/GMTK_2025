/// @description Draw self and gun

draw_self();
draw_sprite_ext(gun_sprite, 0, x, y, 1, 1, self.fire_direction - 90, c_white, 1);