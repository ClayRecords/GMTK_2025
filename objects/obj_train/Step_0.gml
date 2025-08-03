/// @description Set dir/angle by pos
get_train_speed();

if (obj_tutorial_manager.at_step("stop_at_bank") || image_angle != 180){
	image_angle = 180;
}
if(global.pause or should_move == false) {
	path_speed = 0;	
}
else {
	path_speed = train_speed;
}

var delta_x = x - prev_x;
var delta_y = y - prev_y;

if (delta_x != 0 || delta_y != 0) {
    direction = point_direction(prev_x, prev_y, x, y);
	image_angle = direction;
}

// Update previous position for next frame
prev_x = x;
prev_y = y;

var offset_distance = 30;
smoke_spawn_x = obj_train.x + lengthdir_x(offset_distance, obj_train.direction);
smoke_spawn_y = obj_train.y + lengthdir_y(offset_distance, obj_train.direction) - 30;
if(global.debug){
	draw_text(smoke_spawn_x, smoke_spawn_y, "o");
}

//// Set sprite index
//if sprite_idx == spr_train_engine_wheel_1 {
//	sprite_idx = spr_train_engine_wheel_2;
//}
//if sprite_idx == spr_train_engine_wheel_2 {
//	sprite_idx = spr_train_engine_wheel_1
//}
