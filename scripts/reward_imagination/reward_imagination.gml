function reward_imagination(imagination_str){
	obj_game_manager.imagination += 1
	obj_notifications_manager.show(spr_imagination, imagination_str, 2);
}