/// @description Insert description here
// You can write your code in this editor

// Find the leader train instance
leader = instance_find(obj_train, 0);

// Initialize previous position (for direction tracking)
prev_x = x;
prev_y = y;

if (leader != noone) {
    train_path = leader.train_path;
    car_offset = -((array_length(leader.train_cars)+1) * leader.car_spacing);
	
	
    image_xscale = leader.image_xscale;
    image_yscale = leader.image_yscale;
}
