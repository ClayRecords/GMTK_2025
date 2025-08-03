 event_inherited()
 
if (is_active) {
	direction = point_direction(obj_toy_box.x, obj_toy_box.y, x, y);
	speed = 5;
	
	//kill if out
	var out_horizontally = ((x + sprite_width) < 0) || ((x - sprite_width) > room_width);
	var out_vertically = ((y + sprite_height) < 0) || ((y - sprite_height) > room_height);

	if (out_horizontally || out_vertically) {
		instance_destroy(self);
	}
}