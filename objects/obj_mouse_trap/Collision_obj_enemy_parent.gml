if (is_active) {
	other.current_health -= damage;
	instance_destroy(self);
}