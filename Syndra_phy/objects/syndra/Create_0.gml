///this is syndra
phy_fixed_rotation = true;
spd = 2;
state = move_state;
targetx = syndra.x;
targety = syndra.y;
dist = point_distance(syndra.x, syndra.y, targetx, targety);

///spell cds
q_ready = true;
w_ready = true;
e_ready = true;
fast_ball_counter = 3; ///this counter is used to implement the r cd