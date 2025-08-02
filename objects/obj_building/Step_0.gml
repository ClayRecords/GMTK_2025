var distance_to_train = point_distance(x, y, obj_train.x, obj_train.y);
var dist_measured = 140;
if (distance_to_train < dist_measured){
    enter_building();
}

else if (distance_to_train > dist_measured && just_entered == true) {
	just_entered = false;
	obj_building_manager.current_building = noone;
}