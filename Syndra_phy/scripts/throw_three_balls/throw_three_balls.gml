///throw three obj_balls in the direction of the mouse
///this is syndra's r
scr_get_input();

/////location where the ball will go towards
target_fast_x = window_view_mouse_get_x(0);
target_fast_y = window_view_mouse_get_y(0);

var knockback = 15;
var dir = point_direction(syndra.x, syndra.y, target_fast_x, target_fast_y);
var xforce = lengthdir_x(knockback, dir);
var yforce = lengthdir_y(knockback, dir);

fast_ball = instance_create_layer(syndra.x, syndra.y, "instances", obj_fast_ball);
fast_ball.phy_rotation -= dir - 45;
with (fast_ball) {
	physics_apply_impulse(other.x, other.y, xforce, yforce);
}

fast_ball.alarm[0] = room_speed*0.25; //the time the fast_ball is in motion
fast_ball_counter -= 1;