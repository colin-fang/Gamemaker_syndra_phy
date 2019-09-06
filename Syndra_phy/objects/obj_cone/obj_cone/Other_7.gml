///
syndra.state = move_state;
syndra.alarm[2] = room_speed * global.e_cd; //the cooldown of the skill
obj_ui_e.count = 0; ///start the ui cd animation
instance_destroy();
