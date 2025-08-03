/// @description sounds map, soundtrack

function play_soundtracks() {
	menu_stream = audio_create_stream("menu_music.ogg");
	game_stream = audio_create_stream("game_music.ogg");
	main_menu_soundtrack = audio_play_sound(menu_stream, 9, true);
	game_soundtrack = audio_play_sound(game_stream, 9, true);
	audio_sound_gain(main_menu_soundtrack, 0.4, 4000);
	audio_sound_gain(game_soundtrack, 0, 0);
}

sounds_map = {
	"boom": [
		snd_boom1,
		snd_boom2,
		snd_boom3
	],
	"choochoo": [
		snd_choochoo1,
		snd_choochoo2
	],
	"clank": [
		snd_clank1,
		snd_clank2
	],
	"coin": [
		snd_coin1,
		snd_coin2,
		snd_coin3,
		snd_coin4,
		snd_coin5
	],
	"crush": [
		snd_crush1,
		snd_crush2,
		snd_crush3
	],
	"grunt": [
		snd_grunt1,
		snd_grunt2,
		snd_grunt3,
		snd_grunt4
	],
	"pew": [
		snd_pew1,
		snd_pew2,
		snd_pew3
	],
	"thud": [
		snd_thud1,
		snd_thud2
	],
	"wood": [
		snd_wood1,
		snd_wood2
	],
	"laserwindup": [
		snd_laserwindup
	],
	"laserair": [
		snd_laserair
	]
}

function play_random_from_folder(folder_name, volume) {
	var files = struct_get(sounds_map, folder_name);
	var file_index = random(array_length(files) - 1);
	var sound_index = files[file_index];
	var sound = audio_play_sound(sound_index, 3, false);
	audio_sound_gain(sound, volume, 0);
	return sound;
}