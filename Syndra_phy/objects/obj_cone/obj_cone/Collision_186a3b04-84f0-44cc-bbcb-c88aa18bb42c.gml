///knock the ball back in the direction away from syndra
///Apply the knockback
if (other.id != creator){
	var dir = point_direction(syndra.x, syndra.y, other.x, other.y);
	var xforce = lengthdir_x(knockback, dir);
	var yforce = lengthdir_y(knockback, dir);
	with (other) {
		physics_apply_impulse(other.x, other.y, xforce, yforce);
	}
	other.pull_in_range = false; //this code stops pull_ball script on the specific obj_ball instance
	other.alarm[3] = room_speed * 0.15; //this alarm for the obj_ball stops the obj_ball in motion
}