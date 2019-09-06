self.pull_in_range = false;
if(pull_checked == true){ //this check ensures that the obj_ball only stops when being pulled.
							//if syndra and obj_ball are in collision just by standing next to each other
							//the linear velocity will not be stopped
	self.phy_linear_velocity_x = 0;
	self.phy_linear_velocity_y = 0;
	//when the ball collides with syndra after being pulled, subtract the pull_count until 0 
	syndra.pull_count -= 1;
	pull_checked = false;
	//once pull_count is 0, stop the w process
	if(syndra.pull_count == 0){
		syndra.w_ready = false;	
		syndra.pull_count = 0;
	}
}
