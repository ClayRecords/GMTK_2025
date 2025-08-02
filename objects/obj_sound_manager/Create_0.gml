/// @description Main soundtrack

main_soundtrack = audio_play_sound(snd_soundtrack, 1, true, 0.25, 4.5);

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