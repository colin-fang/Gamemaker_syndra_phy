///this is syndra's w which pulls all existing balls within a radius towards syndra
scr_get_input();

dist = point_distance(x, y, syndra.x, syndra.y);
dir = point_direction(x, y, syndra.x, syndra.y);
outer_range = 200;
spd = 10;
spdx = lengthdir_x(spd, dir);
spdy = lengthdir_y(spd, dir);

if(w_key){
	if (dist <= outer_range && syndra.w_ready == true){
		///reset the duration of the ball's existence and reset the image_speed
		obj_ball.alarm[0] = room_speed*6;
		image_speed = 1;
		///---------------------
		pull_in_range = true;
	}else{
		pull_in_range = false;
	}
}
if(syndra.w_ready == true && pull_in_range == true){
		phy_position_x += spdx;
		phy_position_y += spdy;
		syndra.alarm[1] = room_speed*6;
		//Create the dash effect
		var dash = instance_create_depth(x, y, 1, obj_dash_effect);
		dash.sprite_index = sprite_index;
		dash.image_index = image_index;
}