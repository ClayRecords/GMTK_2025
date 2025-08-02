/// @description Go to toy box

direction = point_direction(x, y, obj_toy_box.x, obj_toy_box.y);
speed = move_speed;

function reward_imagination() {
	var improbablity_drive = 30; // number we measure health against, the smaller it is the more likely an enemy rewards imagination
	var random_num = irandom(improbablity_drive);
	print(str(random_num) + "|" + str(self.max_health));
	if (random_num < self.max_health) {
		obj_game_manager.imagination += 1
	}
}