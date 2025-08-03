/// @description Draw debug circle for interact radius
if (obj_game_manager.debug){
	draw_set_colour(c_white);
	draw_circle(self.x,self.y,distance_to_stop_at_building,true);
	
	//mouse is hovering over the building hitbox
	if (mouse_over){
	draw_set_colour(c_red);
	draw_circle(self.x,self.y,distance_to_stop_at_building,true);
	}
}

