/// @description
event_inherited();

image_xscale = global.model_scale;
image_yscale = global.model_scale;

walk_interval = global.one_second * 4;
pause_interval = global.one_second * 4;
fire_interval = global.one_second * 3;
charging_fire = false;
charge_fire_count = 0;
charge_fire_rotation = 0;
charge_file_rotation_rate = global.one_second * 0.25;
life_count = 0;
current_speed = move_speed;

bullet_speed = 4;
bullet_damage = 4;
collision_damage = 3;

alarm[0] = walk_interval;