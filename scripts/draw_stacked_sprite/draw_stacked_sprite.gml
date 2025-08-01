function draw_stacked_sprite(_sprite_index, _x, _y, _z) {

	var _image_zscale = obj_camera.image_zscale

	var _x_step = _image_zscale * dcos(90 + obj_camera.angle);
	var _y_step = _image_zscale * dsin(90 + obj_camera.angle);

	for (var i = 0; i < sprite_get_number(_sprite_index); i++){
		draw_sprite(_sprite_index, i, _x -_x_step * i, _y - _y_step * i - _z);
	}

}