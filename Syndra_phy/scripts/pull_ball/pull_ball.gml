///this is syndra's w which pulls all existing balls within a radius towards syndra
///this script is executed for every step of obj_ball
scr_get_input();

dist = point_distance(x, y, syndra.x, syndra.y);
dir = point_direction(x, y, syndra.x, syndra.y);
outer_range = 200;
spd = 10;
spdx = lengthdir_x(spd, dir);
spdy = lengthdir_y(spd, dir);

//this code is contained within a key_check_pressed_code so that it is not executed every step
//it is only executed upon w press
if(w_key){
	//if the ball is outside, check it false, if the ball is inside, check it true
	//pull_count and pull_checked are used to ensure that all balls will reach syndra
	if(dist <= outer_range && pull_checked == false){
		syndra.pull_count += 1;
		pull_checked = true;
	}else if(dist > outer_range && pull_checked == true){
		syndra.pull_count -= 1;
		pull_checked = false;	
	}
	//-------------------------------------------------
	if (dist <= outer_range && syndra.w_ready == true){
		///reset the duration of the ball's existence and reset the image_speed
		obj_ball.alarm[0] = room_speed*global.q_dur;
		image_speed = 1;
		///--------------------
		pull_in_range = true;
	}
}

//this code is executed every step of the obj_ball so that the travel is continuous
if(pull_in_range == true){
		phy_position_x += spdx;
		phy_position_y += spdy;
		syndra.alarm[1] = room_speed*global.w_cd;///cooldown of w
		obj_ui_w.count = 0; ///start the ui cd animation
		//Create the dash effect
		var dash = instance_create_depth(x, y, 1, obj_dash_effect);
		dash.sprite_index = sprite_index;
		dash.image_index = image_index;
}