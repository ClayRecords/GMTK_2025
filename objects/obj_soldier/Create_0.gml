/// @description
event_inherited();

image_xscale = global.model_scale;
image_yscale = global.model_scale;

shooting_distance = 50 + random_range(-20, 20);
is_shooting = false;

fire_rate = global.one_second;
bullet_speed = 10;
bullet_damage = 1;
current_speed = move_speed;