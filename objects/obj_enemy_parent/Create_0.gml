/// @description Go to toy box
direction = point_direction(x, y, obj_toy_box.x, obj_toy_box.y);
speed = move_speed;

function roll_for_imagination() {
	var improbablity_drive = 30; // number we measure health against, the smaller it is the more likely an enemy rewards imagination
	var random_num = irandom(improbablity_drive);
	if (random_num < self.max_health) {
		var imagination_str = "You got 1 Imagination from destroying toys!";
		reward_imagination(imagination_str)

	}
}