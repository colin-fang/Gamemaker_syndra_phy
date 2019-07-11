///Move 10% towards the player
if(instance_exists(syndra)){
	x += (syndra.x - x) * .1;
	y += (syndra.y - y) * .1;
}