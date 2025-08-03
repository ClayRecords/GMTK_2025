/// @description damage self, destroy projectile
if (is_active) {
	current_health -= other.damage;
	instance_destroy(other);
}