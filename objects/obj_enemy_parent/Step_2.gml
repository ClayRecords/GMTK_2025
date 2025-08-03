/// @description Die at 0hp

if (self.current_health <= 0) {
	var imagination_str = "You got 1 Imagination from destroying toys!";

	reward_imagination(imagination_str);
	instance_destroy(self);
}