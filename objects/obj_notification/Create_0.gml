
start_y = y;
target_y = -obj_notifications_manager.notification_height;
end_y = target_y;
move_progress = 0; // Current progress (0 to move_target)
move_target = 60; // Number of frames for the move (e.g., 60 for 1 second at 60 FPS)

alarm[0] = 60 * duration;
