other.current_health = other.current_health - damage;
self.health = self.health - 1;
if(self.health <= 0){
	instance_destroy(self);
}