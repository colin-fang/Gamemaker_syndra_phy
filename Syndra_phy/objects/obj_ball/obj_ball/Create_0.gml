///this is syndra's dark sphere
event_inherited();
image_speed = 1;
alarm[0] = room_speed*6; ///ball destroy alarm
alarm[2] = room_speed*1; ///animation speed up alarm
pull_in_range = false;
pull_checked = false; //this boolean is used to ensure that pull_count doesnt
						//count this ball more than once; it will be set back to false
						//upon collision with syndra
is_ball = 0;// this number keeps track of which type of ball this specific instance is
			// 0 is q generated ball
			// 1 is ball 1 from r, 2 is ball 2, 3 is ball 3
