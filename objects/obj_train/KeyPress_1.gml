/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(187)) {
	// Press '=' to add train_cars
	if (array_length(train_cars) >= max_number_of_cars) return
	
	var car = instance_create_layer(x, y, "Instances_1", obj_train_car);
	array_push(train_cars,car);
}
