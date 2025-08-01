all_wave_enemies = [
	0, // Nothing at first!
    1,
	2,
	3
]

wave_number = 0;
active_wave_enemies = all_wave_enemies[wave_number];
spawn_rate = game_get_speed(gamespeed_fps);
wave_is_active = false;

function start_next_wave() {
	wave_number++
	active_wave_enemies = all_wave_enemies[wave_number];
	alarm[0] = spawn_rate;
	wave_is_active = true;
}

wave_counter_pos_x = room_width / 2;
wave_counter_pos_y  = 50;