///fast_ball stop alarm
phy_linear_velocity_x = 0;
phy_linear_velocity_y = 0;
instance_destroy();
instance_create_layer(x, y, "instances", obj_ball);