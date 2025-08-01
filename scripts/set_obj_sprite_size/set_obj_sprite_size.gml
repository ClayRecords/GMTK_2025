function set_obj_sprite_size(obj, width=undefined, height=undefined) {
	// Get an object's sprite and set it to a new size
	var obj_sprite = obj.sprite_index;
	if (width != undefined) {
		obj.image_xscale = width / sprite_get_width(obj_sprite);
	}
	if (height != undefined) {
		obj.image_yscale = height / sprite_get_height(obj_sprite);
	}
}