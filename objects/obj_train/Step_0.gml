/// @description Insert description here
// You can write your code in this editor

if(global.pause or should_move == false) {
	path_speed = 0;	
} else {
	path_speed = train_speed;
}



var delta_x = x - prev_x;
var delta_y = y - prev_y;

if (delta_x != 0 || delta_y != 0) {
    direction = point_direction(prev_x, prev_y, x, y);
    image_angle = direction; // rotate sprite to match
}

// Update previous position for next frame
prev_x = x;
prev_y = y;
