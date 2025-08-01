var distance_to_train = point_distance(x, y, obj_train.x, obj_train.y);

if (distance_to_train < 30){
    enter_building();
}

else if (distance_to_train > 30 && just_entered == true) {
	just_entered = false;
}