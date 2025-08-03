if (move_progress < move_target) {
    move_progress++;
    var _progress_factor = move_progress / move_target;
    y = round(lerp(start_y, end_y, _progress_factor));
}

if (disappearing) {
	image_alpha -= 1 / 60;
}