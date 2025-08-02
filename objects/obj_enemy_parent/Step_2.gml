/// @description Die at 0hp

if (self.current_health <= 0) {
	reward_imagination();
	instance_destroy(self);
}