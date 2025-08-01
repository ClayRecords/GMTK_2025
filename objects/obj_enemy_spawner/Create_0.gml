all_waves = [
	[], // Nothing at first!
    [{"s": 2}, {"s": 6, "r": 1}, {"s": 8, "r": 2}],
	[{"s": 15}],
	[{"s": 20}]
];

wave_index = -1;
sub_wave_index = -1;
active_wave = noone;
wave_is_active = false;

time_between_waves = global.one_second * 10;
time_between_sub_waves = global.one_second * 5;
sub_wave_spawn_rate = global.one_second;

//alarm[0] = time_between_waves;

function start_next_wave() {
	wave_is_active = true;
	wave_index++;
	sub_wave_index = -1;
	active_wave = all_waves[wave_index];
	start_next_sub_wave();
}

function start_next_sub_wave() {
	sub_wave_index++;
	active_sub_wave = active_wave[sub_wave_index];
	
	spawn_next_enemy();
	
	if (sub_wave_index >= array_length(active_sub_wave)) {
		// No more sub waves, start a timer for the next wave
		wave_is_active = false;
		alarm[0] = time_between_waves;
		return;
	}
}

function spawn_next_enemy() {
	var enemy_key = get_random_sub_wave_enemy_name();
	active_sub_wave[enemy_key]--;
	if (active_sub_wave[enemy_key] <= 0) {
		ds_map_delete(active_sub_wave, enemy_key);
	}
	
	switch (enemy_key) {
	    case "s":
			instance_create_layer(0, 0, "Instances", obj_soldier);
			break;
	    case "r":
	        break;
	    default:
	        break;
	}
	
	// Check if sub wave is done
	var key_list = ds_map_keys(active_sub_wave);
	var key_count = ds_list_size(key_list);
	if (key_count <= 0) {
		// Set alarm for next sub wave
		alarm[1] = time_between_sub_waves;
	}
	
	alarm[2] = sub_wave_spawn_rate;
}

function get_random_sub_wave_enemy_name() {
	var key_list = ds_map_keys(active_sub_wave);
	var key_count = ds_list_size(key_list);

	if (key_count = 1) {
		return key_list[0];
	}
	
	var random_index = irandom(key_count - 1);
	var random_key = key_list[| random_index];
    return random_key;	
}

function get_enemy_to_spawn_count(enemy_key) {
	if (!ds_map_exists(active_sub_wave, enemy_key)) {
		return 0;
	}
	return active_sub_wave[enemy_key];
}