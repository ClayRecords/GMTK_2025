/// @description Draw wave counter

draw_text(wave_counter_pos_x, wave_counter_pos_y, "Wave " + str(wave_number))
draw_text(wave_counter_pos_x, wave_counter_pos_y + 20, "Remaining enemies: " + str(active_wave_enemies))