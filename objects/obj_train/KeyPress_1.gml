/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(187)) {
	// Press '=' to add train_cars
	add_car();
}

if (keyboard_check_pressed(189)){
	add_weapon_to_next_car(obj_turret_basic);
}
