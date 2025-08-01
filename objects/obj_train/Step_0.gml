/// @description Insert description here
// You can write your code in this editor

if(global.pause) {
	path_speed = 0;	
} else {
	path_speed = train_speed;
}

var delta_x = x - prev_x;
var delta_y = y - prev_y;

if (abs(delta_x) > abs(delta_y)) {
    if (delta_x > 0) {
        direction = 0; // right
    } else {
        direction = 180; // left
    }
} else {
    if (delta_y > 0) {
        direction = 270; // down
    } else {
        direction = 90; // up
    }
}

// Update previous position for next frame
prev_x = x;
prev_y = y;
image_angle = direction

print("Direction here:",direction);