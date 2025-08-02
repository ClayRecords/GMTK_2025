/// @description Insert description here
// You can write your code in this editor

// Find the leader train instance
leader = instance_find(obj_train, 0);
weapon = noone;


// Initialize previous position (for direction tracking)
prev_x = x;
prev_y = y;

if (leader != noone) {
    train_path = leader.train_path;
    car_offset = -((array_length(leader.train_cars)+1) * leader.car_spacing);
}



function add_weapon(weapon_obj) {
	// Add turret ontop of the the sprite of the train_car
	try {
		var weapon = instance_create_layer(x,y,"Turret_Layer",weapon_obj);
	
		self.weapon = weapon;
	
		if (variable_instance_exists(weapon,"parent_car")) {
			weapon.parent_car = id;
		}
	} catch(_exception)  {
		print(_exception);
	}

}