/// @description Get a direction to go to find the intersection point of two moving items

function get_lead_direction(
    source_x, source_y,
	source_speed,
    target_x, target_y,
    target_vx, target_vy) {
	// This sure is code
	
    var dx = target_x - source_x;
    var dy = target_y - source_y;

    var a = target_vx * target_vx + target_vy * target_vy - source_speed * source_speed;
    var b = 2 * (target_vx * dx + target_vy * dy);
    var c = dx * dx + dy * dy;

    var discriminant = b * b - 4 * a * c;
    if (discriminant < 0 || abs(a) < 0.0001) {
        // Cannot intercept, aim directly
        return point_direction(source_x, source_y, target_x, target_y);
    }

    var t1 = (-b + sqrt(discriminant)) / (2 * a);
    var t2 = (-b - sqrt(discriminant)) / (2 * a);
    var t = min(t1, t2);
    if (t < 0) t = max(t1, t2); // pick future time
    if (t < 0) {
        // Still can't intercept, fallback
        return point_direction(source_x, source_y, target_x, target_y);
    }

    var intercept_x = target_x + target_vx * t;
    var intercept_y = target_y + target_vy * t;
    return point_direction(source_x, source_y, intercept_x, intercept_y);
}