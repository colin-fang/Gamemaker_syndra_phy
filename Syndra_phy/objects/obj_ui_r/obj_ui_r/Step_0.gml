///once a skill is used set the sprite into motion 
if (count != -1){
	count++;
	image_index = count/countto*sprite_get_number(sprite_index);
	if (count >= countto){
		image_index = -1;
		count = -1;
	}
}
