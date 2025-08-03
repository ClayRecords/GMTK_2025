all_waves = [
	[{"s": 1, "k": 1}, {"s": 1, "k": 1, "r": 1}],
	[{"s": 2, "k": 2, "r": 1}, {"s": 3, "k": 2, "r": 1}, {"r": 2}],
	[{"k": 1}, {"s": 7}, {"k": 1}, {"k": 1}, {"k": 1}, {"r": 2}],
	[{"s": 20}]
];

waves_length = array_length(all_waves);
last_wave =  variable_clone(all_waves[waves_length - 1]);

// Starting stats
wave_index = -1;
sub_wave_index = -1;
active_wave = noone;
wave_is_spawning = false;
sub_wave_is_spawning = false;

// Timings
time_between_waves = global.one_second * 15;
time_between_sub_waves = global.one_second * 8;
sub_wave_spawn_rate = global.one_second;

// Display
top_text = "";
bottom_text = "";
function kickoff() {
	alarm[0] = time_between_waves * 2;
}

function start_next_wave() {
	wave_index++;
	wave_is_spawning = true;
	
	// Check if no more waves
	if (wave_index >= array_length(all_waves)) {
		print("Winner winner! Repeating wave")
		active_wave = deep_copy_array_of_structs(last_wave);
	} else {
		active_wave = all_waves[wave_index];
	}
	
	sub_wave_index = -1;
	start_next_sub_wave();
}

function start_next_sub_wave() {
	sub_wave_index++;	
	sub_wave_is_spawning = true;
	active_sub_wave = active_wave[sub_wave_index];
	spawn_next_enemy();

	// Check if no more sub waves
	if (sub_wave_index >= array_length(active_wave) - 1) {
		wave_is_spawning = false;
		return;
	}
}

function spawn_next_enemy() {	
	// Get random enemy
	var enemy_key = get_random_sub_wave_enemy_name();
	
	// Minus from the count
	active_sub_wave[$ enemy_key]--;
	if (active_sub_wave[$ enemy_key] <= 0) {
		variable_struct_remove(active_sub_wave, enemy_key);
	}
	
	x_and_y = generate_x_and_y();
	var new_x = x_and_y[0];
	var new_y = x_and_y[1];
	
	// Do the spawn
	switch (enemy_key) {
	    case "s":
			instance_create_layer(new_x, new_y, "Instances", obj_soldier);
			break;
	    case "r":
			instance_create_layer(new_x, new_y, "Instances", obj_robot);
	        break;
		case "k":
			var soldier = instance_create_layer(new_x, new_y, "Instances", obj_soldier_kneeling);
			break;
	    default:
	        break;
	}
	
	// Check if no more enemies in sub wave
	if (struct_key_count(active_sub_wave) <= 0) {
		sub_wave_is_spawning = false;
		
		if (wave_is_spawning) {
			// Next sub wave	
			alarm[1] = time_between_sub_waves;
		}
		return;
	}
	
	// Wait and spawn another enemy
	if (sub_wave_is_spawning) {
		alarm[2] = sub_wave_spawn_rate;
	}
}

function get_random_sub_wave_enemy_name() {
	// Get a random enemy from the remaining enemies in the sub wave
	
	var key_list = struct_get_names(active_sub_wave);
	var key_count = array_length(key_list);

	if (key_count = 1) {
		return key_list[0];
	}
	
	var random_index = irandom(key_count - 1);
	var random_key = key_list[random_index];
    return random_key;
}

function struct_key_count(struct) {
	var key_list = struct_get_names(struct);
	return array_length(key_list);
}

function generate_x_and_y() {
	var half_w = room_width  * 0.5;
	var half_h = room_height * 0.5;

	var spawn_patterns = [
		function() { return [random_range(0, room_width  * 0.5), 0]; },                      // Top left
		function() { return [random_range(room_width  * 0.5, room_width), 0]; },            // Top right
		function() { return [room_width, random_range(0, room_height)]; },       // Right
		function() { return [random_range(room_width  * 0.5, room_width), room_height]; },  // Bottom right
		function() { return [random_range(0, room_width  * 0.5), room_height]; },           // Bottom left
		function() { return [0, random_range(0, room_height)]; }                 // Left
	];

	var i = irandom(array_length(spawn_patterns) - 1);
	return spawn_patterns[i]();
}