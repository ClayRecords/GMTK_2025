 
if (active) {
	direction = point_direction(obj_toy_box.x, obj_toy_box.y, x, y);
	speed = 5;
	
	//kill if out
	var out_horizontally = ((x + sprite_width) < 0) || ((x - sprite_width) > room_width);
	var out_vertically = ((y + sprite_height) < 0) || ((y - sprite_height) > room_height);

	if (out_horizontally || out_vertically) {
		print("killed baseball");
		instance_destroy(self);
	}
}
else {
	x = mouse_x;
	y = mouse_y;

	//drop on click		
	if (mouse_check_button_pressed(mb_left)) {
		active = true;
	}
}


