/// @description 

// Find the leader train instance
leader = instance_find(obj_train, 0);
weapon = noone;

// Initialize previous position (for direction tracking)
prev_x = x;
prev_y = y;

if (leader != noone) {
    train_path = leader.train_path;
    car_offset = -((array_length(leader.train_cars) + 1) * leader.car_spacing);
}

function add_weapon(weapon_obj) {
	// Add weapon to this car, and this car to the weapon
	var weapon = instance_create_layer(x,y,"Turret_Layer",weapon_obj);
	self.weapon = weapon;
	
	if (variable_instance_exists(weapon,"parent_car")) {
		weapon.parent_car = id;
	}	
}