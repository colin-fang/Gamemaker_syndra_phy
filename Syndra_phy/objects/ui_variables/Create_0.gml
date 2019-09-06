///initialize the variables

global.ui_x_scale = display_get_gui_width()/view_wview[ view_current ];
global.ui_y_scale = display_get_gui_height()/view_hview[ view_current ];
///Get te mouse position relative to the gui not the room
//global.gui_mouse_x = (mouse_x - view_xview[ view_current ]) * global.ui_x_scale
//global.gui_mouse_y = (mouse_y - view_yview[ view_current ]) * global.ui_y_scale

