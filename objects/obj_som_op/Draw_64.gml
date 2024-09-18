
draw_set_font(fnt_menu);
global.dialogo = true;
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x1 = gui_width / 2;
var y1 = gui_height /2 + 110;
var margin = 90;
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

draw_set_halign(fa_center);

for (var i = 0; i < op_max; i++){
	var y2 = y1 + (margin * i);
	var string_w = string_width(options[i]);
	var string_h = string_height(options[i]);
	
	if (point_in_rectangle(m_x, m_y, x1 - string_w /2, y2 - string_h /2, x1 + string_w, y2 + string_h)){
	draw_set_color(c_black);
	index = i;
	if(mouse_check_button_pressed(mb_left)){
		if (index == 0){
			audio_play_sound(snd_click_menu,0,0);
			instance_create_layer(x, y, "Instances", obj_destruidor_som);
			instance_create_layer(x, y, "Instances", obj_destruidor_som2);
		draw_set_color(c_white);
		}
		if (index == 1){
			audio_play_sound(snd_click_menu,0,0);
			instance_destroy(obj_destruidor_som);
			instance_destroy(obj_destruidor_som2);
		draw_set_color(c_white);
		}
		
		if (index == 2){
			audio_play_sound(snd_click_menu,0,0);
			room_goto(MaisOp);
		}
		
	}
	}else {
	draw_set_color(c_white);
	}
	
draw_text(x1, y2, options[i]);
}