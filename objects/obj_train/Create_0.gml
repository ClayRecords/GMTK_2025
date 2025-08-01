/// @description Insert description here
// On creation the train should initialize it's path. 
// In theory this can be drawn by a user
// on top of the background if they want. 
// For now I am just making the path a circle

// IMPORTANT! This only works when the length_of_straightaway 
// is double the circle_radius


train_path = path_add();

starting_x = x;
starting_y = y;

prev_x = x;
prev_y = y;

train_speed = 5;
min_train_speed = 0;
max_train_speed = 10;

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

// Start the pat using path_action_restart
path_start(train_path, train_speed, path_action_restart, true);
