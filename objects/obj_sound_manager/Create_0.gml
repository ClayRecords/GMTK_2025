/// @description sounds map
main_menu_soundtrack = audio_play_sound(snd_main_menu_soundtrack, 9, true, 0.4, 4.5)	
game_soundtrack = audio_play_sound(snd_game_soundtrack, 9, true, 0, 0);

sounds_map = {
	"pew": [
		snd_pew1,
		snd_pew2,
		snd_pew3
	]
}

function play_random_from_folder(folder_name, volume) {
	var files = struct_get(sounds_map, folder_name);
	var file_index = random(array_length(files) - 1);
	var sound_index = files[file_index];
	var sound = audio_play_sound(sound_index, 1, false);
	audio_sound_gain(sound, volume, 0);
}