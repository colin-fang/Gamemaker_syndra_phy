//
//after colliding with obj_cone, knockback variables are set for the obj_ball_appear 
//these variables will be used to knockback the new obj_ball
obj_ball_appear.dir = point_direction(syndra.x, syndra.y, other.x, other.y);
obj_ball_appear.xforce = lengthdir_x(knockback, obj_ball_appear.dir);
obj_ball_appear.yforce = lengthdir_y(knockback, obj_ball_appear.dir);
obj_ball_appear.knock_true = true;