var distance_to_train = point_distance(x, y, obj_train.x, obj_train.y);

if (distance_to_train < 140){
    enter_building();
}

else if (distance_to_train > 140 && just_entered == true) {
	just_entered = false;
	obj_building_manager.current_building = noone;
}