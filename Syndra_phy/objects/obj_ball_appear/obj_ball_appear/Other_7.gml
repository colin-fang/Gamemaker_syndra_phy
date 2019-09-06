///when the animation ends, destroy itself and create_ball
///damages target
instance_destroy();
var ball; //use ball to call the specific obj_ball instance instead of all the obj_balls
ball = instance_create_layer(x, y, "instances", obj_ball); 

//if the cone obj collides with the ball appear animation,
//when the obj_ball is created, apply the same impulse as
//if the cone obj collided with the ball
if(knock_true == true){
	ball.xforce = xforce;
	ball.yforce = yforce;
	with(ball) {
		physics_apply_impulse(ball.x, ball.y, xforce, yforce);
	}
	ball.pull_in_range = false;
	ball.alarm[3] = room_speed * 0.2;
}
syndra.alarm[0] = room_speed*global.q_cd; ///cooldown of the q
obj_ui_q.count = 0; ///start the ui cd animation

