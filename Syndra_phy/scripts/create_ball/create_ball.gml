///this is syndra's q
scr_get_input();

///location where the ball will appear
target_ball_x = window_view_mouse_get_x(0);
target_ball_y = window_view_mouse_get_y(0);

dist = point_distance(syndra.x, syndra.y, target_ball_x, target_ball_y);

if(syndra.q_ready == true){
	if(dist <= 75){
		instance_create_layer(target_ball_x, target_ball_y, "instances", obj_ball_appear);
		syndra.q_ready = false;
	}else{
		///move_towards_point(targetx, targety, spd);
	}
}


