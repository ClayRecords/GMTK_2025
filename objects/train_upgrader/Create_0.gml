// Inherit the parent event
event_inherited();
building_layer_name = "TrainUpgradeUI"; 

function do_option1() {
	obj_train.min_train_speed = max(obj_train.min_train_speed - 2, 0);
	obj_train.max_train_speed += 10;
}
function do_option2() {
	obj_train.train_power_level++;
}
function do_option3() {
	obj_train.add_car();
}