all_waves = [
	[{"k": 2}, {"s": 1}],
	[{"k": 2}, {"s": 2}],
	[{"s": 2}, {"s": 6, "r": 1}, {"s": 8, "r": 2}],
	[{"s": 15}],
	[{"s": 20}]
];

// Starting stats
wave_index = -1;
sub_wave_index = -1;
active_wave = noone;
wave_is_spawning = false;
sub_wave_is_spawning = false;

// Timings
time_between_waves = global.one_second * 10;
time_between_sub_waves = global.one_second * 5;
sub_wave_spawn_rate = global.one_second;

// Kickoff
//alarm[0] = time_between_waves;
start_next_wave();

function start_next_wave() {
	wave_index++;
	wave_is_spawning = true;
	active_wave = all_waves[wave_index];
	sub_wave_index = -1;
	start_next_sub_wave();
	
	// Check if no more waves
	if (wave_index >= array_length(all_waves) - 1) {
		print("Winner winner!")
		return;
	}
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
			var soldier = instance_create_layer(new_x, new_y, "Instances", obj_kneeling_soldier);
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
	var room_side = irandom(6);
	
	var left_x = 0;
	var middle_x = room_width / 2;
	var right_x = room_width;
	
	var top_y = 0;
	var bottom_y = room_height;
		
	var new_x = 0;
	var new_y = 0;
	// Do the spawn
	switch (room_side) {
	    case 0:
			// Top left section
			new_x = random_range(left_x,middle_x);
			new_y = top_y
			break;
	    case 1:
			// Top right section
			new_x = random_range(middle_x,right_x);
			new_y = top_y
			break;
		case 2:
			// Right side 
			new_x = right_x
			new_y = random_range(top_y,bottom_y);
			break;
		case 3:
			// Bottom right section
			new_x = random_range(middle_x,right_x);
			new_y = bottom_y
			break;
		case 4:
			// Bottom left section
			new_x = random_range(left_x,middle_x);
			new_y = bottom_y
			break;
		case 5:
			// Left side
			new_x = left_x
			new_y = random_range(top_y,bottom_y);
			break;
		default:
			break;
	}
	return [new_x, new_y]
}