///fast_ball stop alarm
phy_linear_velocity_x = 0;
phy_linear_velocity_y = 0;
instance_destroy();
var ball = instance_create_layer(x, y, "instances", obj_ball);

///undraw each floating ball according to the number
if (syndra.draw_ball_1 == true){
	syndra.draw_ball_1 = false;	
	ball.is_ball = 1;
}else if(syndra.draw_ball_2 == true){
	syndra.draw_ball_2 = false;
	ball.is_ball = 2;
}else if(syndra.draw_ball_3 == true){
	syndra.draw_ball_3 = false;
	ball.is_ball = 3;
	obj_ui_r.count = 0;
	syndra.alarm[4] = room_speed*global.r_cd;
}