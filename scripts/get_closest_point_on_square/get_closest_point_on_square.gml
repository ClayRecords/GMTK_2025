function get_closest_point_to_square_obj(px, py, _other) {
	var half_width = _other.sprite_width / 2;
	var half_height = _other.sprite_height / 2;

	return get_closest_point_on_square(
		px, py,
		_other.x - half_width, _other.y - half_height,
		_other.x + half_width, _other.y + half_height
	)
}

function get_closest_point_on_square(px, py, x1, y1, x2, y2) {
    // Clamp the point's coordinates to the square's bounds
    var closest_x = clamp(px, min(x1, x2), max(x1, x2));
    var closest_y = clamp(py, min(y1, y2), max(y1, y2));

    // Return the closest point
    return new Point(closest_x, closest_y);
}