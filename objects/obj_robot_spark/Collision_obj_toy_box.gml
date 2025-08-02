/// @description Damage enemy, destroy self

other.current_health = other.current_health - damage;
instance_destroy(self);