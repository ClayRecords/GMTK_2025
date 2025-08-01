
//if keyboard_check(ord("A")){show_debug_message("hello world")}
if keyboard_check(ord("A")){angle += 2;}
if keyboard_check(ord("D")){angle -= 2;}
//if (check(vk_d)) angle -= 2;

camera_set_view_angle(view_camera[0], angle)