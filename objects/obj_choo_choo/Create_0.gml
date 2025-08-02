//image_speed = 0

train_path = path_add();


starting_x = x;
starting_y = y;

prev_x = x;
prev_y = y;

car_spacing = 0.02;
train_cars = [];
max_number_of_cars = 20;

train_power_level = 1;
train_speed = 5;
min_train_speed = 0;
max_train_speed = 10;
duration_between_speed_change = 30;

circle_radius = 150;
num_of_segments = 36; //higher number, smoother the path
length_of_straightaway = 400;

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
path_add_point(train_path, starting_x, starting_y, 50);

// Start the paths using path_action_restart
path_start(train_path, train_speed, path_action_restart, true);


function add_car(){
	if (array_length(train_cars) >= max_number_of_cars) return
	var car = instance_create_layer(x, y, "Instances", obj_train_car);
	array_push(train_cars, car);
}