/// @description 

if (active_wave_enemies > 0) {
	active_wave_enemies--;
	instance_create_layer(0, 0, "Instances", obj_soldier);
	alarm[0] = spawn_rate;
}