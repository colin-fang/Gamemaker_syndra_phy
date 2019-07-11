///this is syndra's e
scr_get_input();

/////location where the ball will appear
target_cone_x = window_view_mouse_get_x(0);
target_cone_y = window_view_mouse_get_y(0);

dir = point_direction(syndra.x, syndra.y, target_cone_x, target_cone_y);

if(syndra.e_ready == true){
		cone = instance_create_layer(syndra.x, syndra.y + 6, "instances", obj_cone);
		cone.creator = syndra;
		obj_cone.phy_rotation -= dir - 45;
		syndra.e_ready = false;
		syndra.state = stop_state;
}

