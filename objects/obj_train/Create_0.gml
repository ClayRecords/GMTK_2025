/// @description Init path, add tracks

// Set initial sprite index
sprite_idx = spr_train_engine_wheel_1;

// IMPORTANT! This only works when the length_of_straightaway 
// is double the circle_radius
train_path = path_add();

starting_x = x;
starting_y = y - 50;

prev_x = x;
prev_y = y;

car_spacing = 0.04;
train_cars = [];
max_number_of_cars = 20;

train_ramming_damage = 1;

train_base_speed = 5;
train_speed = train_base_speed;
max_train_gear = 0;
current_gear = 0;
gear_speed_modifier = 1.5;

circle_radius = 175;
num_of_segments = 40; //higher number, smoother the path
length_of_straightaway = 350;

should_move = true;

// First straightaway
path_add_point(train_path,starting_x,starting_y, 50);
path_add_point(train_path, starting_x-(length_of_straightaway/2), starting_y, 50);


// First curve of the track
center_x = starting_x -(length_of_straightaway/2) - circle_radius;
center_y = starting_y + circle_radius;
for (var i = num_of_segments; i >= 0; i--) {
    var angle = 90 + (i * (180 / num_of_segments)); 
    var current_x = center_x + circle_radius * cos(degtorad(angle));
    var current_y = center_y + circle_radius * sin(degtorad(angle));
    path_add_point(train_path, current_x, current_y, 50);
}

// Second straightaway
path_add_point(train_path, starting_x + (length_of_straightaway/2),starting_y+(circle_radius*2), 50);

// Second curve of the track
center_x = starting_x + (length_of_straightaway/2) + circle_radius;
center_y = starting_y + circle_radius;
for (var i = num_of_segments; i >= 0; i--) {
    var angle = 270 + (i * (180 / num_of_segments)); 
    var current_x = center_x + circle_radius * cos(degtorad(angle));
    var current_y = center_y + circle_radius * sin(degtorad(angle));
    path_add_point(train_path, current_x, current_y, 50);
}
path_add_point(train_path,starting_x,starting_y, 50);

// Start the path using path_action_restart
path_start(train_path, train_speed, path_action_restart, true);


function add_car(){
	if (array_length(train_cars) >= max_number_of_cars) return
	var car = instance_create_layer(x, y, "Instances", obj_train_car);
	car.image_xscale = 2;
	car.image_yscale = 2;
	array_push(train_cars,car);
}

function add_weapon_to_next_car(weapon) {
	var len = array_length(train_cars);
	
    for (var i = 0; i < len; i++) {
        var car = train_cars[i];
        if (instance_exists(car) && car.weapon == noone) {
            car.add_weapon(weapon); // calls function inside the train car
            break; // only add to one car per keypress
        }
    }
}

// Draw the track sprites
var track_scale = 0.7 // How big the track image appears
var total_length = path_get_length(train_path);

var track_count = 200;
var number_of_segments = 10;
var distance_step = total_length / track_count; // how close together the tracks are
var tracks_per_segment = 24; 

//var connector_offset = 15; // necessary to see the full connector art
var i = 0;
var connector_track = noone;
for (var d = 0; d <= total_length; d += distance_step) {
	connector_track = (i % tracks_per_segment = 0);
	if connector_track {
		d += 15; //connector_offset;
	}
	var x_pos = path_get_x(train_path, d / total_length);
	var y_pos = path_get_y(train_path, d / total_length);

	// Get angle to rotate sprite in path direction
	var next_x = path_get_x(train_path, (d + 1) / total_length);
	var next_y = path_get_y(train_path, (d + 1) / total_length);
	var angle = point_direction(x_pos, y_pos, next_x, next_y);
	var inst = noone;
	try {
		// Place the tile
		if connector_track {
			inst = instance_create_layer(x_pos, y_pos, "Tracks", obj_track_connected);
		}
		else {
			inst = instance_create_layer(x_pos, y_pos, "Tracks", obj_track_straight);
		}
		inst.image_angle = angle; // Rotate the object to face the path
		
		// Re-scale the image
		inst.image_xscale = inst.image_xscale * track_scale
		inst.image_yscale = inst.image_yscale * track_scale
	} catch (_exception) {
		print(_exception)
	}
	i++;
}

self.add_car();
self.add_weapon_to_next_car(obj_turret_basic);
beat = 60*60/120;
alarm[0] = beat;
direction = 180;

function get_train_speed() {
	train_speed = train_base_speed * power(gear_speed_modifier, current_gear)
}
