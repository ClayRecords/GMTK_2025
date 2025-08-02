/// @description
event_inherited();

image_angle = direction + 90;
self.image_xscale = 2
self.image_yscale = 2

shooting_distance = 50 + random_range(-20, 20);
is_shooting = false;

fire_rate = global.one_second;
bullet_speed = 10;
bullet_damage = 1;