/// @description
var _cx = camera_get_view_x(view_camera[0]);
var _cy = camera_get_view_y(view_camera[0]);

var _x = (xx - _cx) * escalax;
var _y = (yy - _cy) * escalay;

draw_set_color(c_white);
draw_set_font(fnt_pixel);
draw_set_alpha(alpha);
draw_text_colour_outline(_x, _y - 40, dano, 4, c_black, 8, 100, 100);
draw_set_alpha(1);