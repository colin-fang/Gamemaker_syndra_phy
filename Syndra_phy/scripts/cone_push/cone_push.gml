///this is syndra's e
//this code only creates the cone obj
//the code to push obj_ball will be contained within the cone obj's collision event with obj_ball

/////location where the ball will appear
target_cone_x = window_view_mouse_get_x(0);
target_cone_y = window_view_mouse_get_y(0);

dir = point_direction(syndra.x, syndra.y, target_cone_x, target_cone_y);

if(syndra.e_ready == true){
		cone = instance_create_layer(syndra.x, syndra.y + 6, "instances", obj_cone); 
		cone.creator = syndra; //the cone obj uses other to refer to obj_ball
								//the creator is syndra so that syndra doesnt get affected
		obj_cone.phy_rotation -= dir - 45;//this code orients the cone obj in the direction of the target
		syndra.e_ready = false;
		syndra.state = stop_state;
}

