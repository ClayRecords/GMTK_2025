/// @description Set speed/direction/angle
get_train_speed();

// Set the initial train angle
if (obj_tutorial_manager.at_step("stop_at_bank")){
	image_angle = 180;
}

// Stop moving
if(global.pause or should_move == false) {
	path_speed = 0;	
} else {
	path_speed = train_speed;
}

// Change direction and angle based on previous position
var delta_x = x - prev_x;
var delta_y = y - prev_y;
if (delta_x != 0 || delta_y != 0) {
    direction = point_direction(prev_x, prev_y, x, y);
	image_angle = direction;
}
// Update previous position for next frame
prev_x = x;
prev_y = y;