/// @description Draw wave counter

return 

var wave_counter_pos_x = room_width / 2;
var wave_counter_pos_y  = 50;

if (wave_index >= 0) {
	draw_text(wave_counter_pos_x, wave_counter_pos_y, "Wave " + str(wave_index + 1));
	draw_text(wave_counter_pos_x, wave_counter_pos_y + 20, "Remaining enemies: " + str(active_wave_enemies));
} else {
	draw_text(wave_counter_pos_x, wave_counter_pos_y, "Enemies incoming!");
}
