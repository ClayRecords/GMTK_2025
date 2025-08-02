/// @description Hurt other, destroy self

other.current_health = other.current_health - collision_damage;

instance_destroy(self);