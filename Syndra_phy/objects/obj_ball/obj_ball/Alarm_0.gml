///ball destroy alarm
///after 6 seconds, the ball disappears
instance_destroy();
//if this ball was within range of being pulled but syndra.w_ready was not true yet
//then subtract itself from the total number of pullable balls
if(pull_checked = true){
	syndra.pull_count -= 1;	
}

//if the ball is created from the r (throw_three_balls)
//then this specific ball is labelled as 1, 2 or 3
//this number is used to redraw the ball sprites
if(is_ball == 1){
	is_ball = 0;
	syndra.draw_ball_1 = true;
}else if(is_ball == 2){
	is_ball = 0;
	syndra.draw_ball_2 = true;
}else if(is_ball == 3){
	is_ball = 0;
	syndra.draw_ball_3 = true;
}