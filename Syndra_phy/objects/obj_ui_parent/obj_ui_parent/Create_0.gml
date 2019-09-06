/// @description Insert description here
// You can write your code in this editor
ui_x_scale = display_get_gui_width()/view_wview[ view_current ];
ui_y_scale = display_get_gui_height()/view_hview[ view_current ];
self_pos_x = xstart * ui_x_scale;
self_pos_y = ystart * ui_y_scale;
x = self_pos_x;
y = self_pos_y;

count = -1;
countto = 0;