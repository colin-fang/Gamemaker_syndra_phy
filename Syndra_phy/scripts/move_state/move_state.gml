///move_state()
scr_get_input();
///mouse click move
if(rmouse){
	targetx = window_view_mouse_get_x(0);
	targety = window_view_mouse_get_y(0);
}
dist = point_distance(phy_position_x, phy_position_y, targetx, targety); ///put this dist outside of mouse click if
											   ///so that the dist is calculated constantly
											   ///not just when the mouse is being clicked
dir = point_direction(x, y, targetx, targety);
spdx = lengthdir_x(spd, dir);///returns the length of the x component
spdy = lengthdir_y(spd, dir);///returns the length of the y component
if(dist >= spd){
	spd = 2;
	phy_position_x += spdx;
	phy_position_y += spdy;
}else{
	spd = 0	
}
///---------------------------------------------------

///q click 
if(q_key){
	script_execute(create_ball);
}
if(e_key){
	script_execute(cone_push);	
}
///for r
if(r_key){
	if(syndra.fast_ball_counter == 3){
		syndra.alarm[3] = room_speed*5; //the duration that the r is available
	}	
	if(syndra.fast_ball_counter > 0){
		script_execute(throw_three_balls);	
	}
}