/// @description Follow the leader

if (leader != noone) {
    // Follow the leader’s position on the path with offset
    var	pos = leader.path_position + car_offset;

    // Wrap around if < 0
    if (pos < 0) pos += 1;
	if (pos > 1) pos -= 1;
	
	var path_y = path_get_y(train_path,pos)
	var path_x = path_get_x(train_path,pos)
	
	x = path_x;
	y = path_y;

    // Optional: update direction and rotate sprite smoothly
    var delta_x = x - prev_x;
    var delta_y = y - prev_y;

    if (delta_x != 0 || delta_y != 0) {
        var dir = point_direction(prev_x, prev_y, x, y);
        image_angle = dir + 90;
    }

    // Update prev position for next step
    prev_x = x;
    prev_y = y;
}