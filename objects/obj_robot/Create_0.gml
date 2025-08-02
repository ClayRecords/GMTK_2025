/// @description
event_inherited();

image_angle = direction;

walk_interval = global.one_second * 3;
pause_interval = global.one_second * 4;
fire_interval = global.one_second * 3;
charging_fire = false;
charge_fire_count = 0;
charge_fire_rotation = 0;
charge_file_rotation_rate = global.one_second * 0.25;

bullet_speed = 4;
bullet_damage = 5;

alarm[0] = walk_interval;