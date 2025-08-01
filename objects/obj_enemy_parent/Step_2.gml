/// @description Die at 0hp

if (self.current_health <= 0) {
	instance_destroy(self);
}