/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_add)) {
	// Press '-' to add train_cars
	if (car_count > max_number_of_cars) {
		return
	}

	var car = instance_create_layer(x, y, "Instances_1", obj_train_car);
}


if (keyboard_check_pressed(187)) {
	// 187 is '='
	// TODO Future for a different train
	if (car_count > max_number_of_cars) {
		return
	}
    var car = instance_create_layer(x, y, "Instances_1", obj_train_car);
}