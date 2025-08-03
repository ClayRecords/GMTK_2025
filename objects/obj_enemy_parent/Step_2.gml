/// @description Die at 0hp

if (self.current_health <= 0) {
	roll_for_imagination();
	instance_destroy(self);
}