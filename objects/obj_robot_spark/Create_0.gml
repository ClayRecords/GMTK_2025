/// @description

event_inherited();

life_count = 0;
rotation = 0;
rotation_rate = global.one_second * 0.25;

sound = obj_sound_manager.play_random_from_folder("laserair", 0.4);