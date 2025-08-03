var distance_to_train = point_distance(obj_go.x, obj_go.y, obj_train.x, obj_train.y);

if (distance_to_train < distance_to_stop_at_building && !just_passed_or_entered){
    pass_or_enter_building();
}

else if (distance_to_train > distance_to_stop_at_building && just_passed_or_entered == true) {
	just_passed_or_entered = false;
}