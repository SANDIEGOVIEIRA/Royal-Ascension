

draw_set_font(fnt_menu);
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x1 = gui_width / 2;
var y1 = gui_height /2 + 100;
var margin = 90;
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

draw_set_halign(fa_center);

// ...

for (var i = 0; i < op_max; i++){
    var y2 = y1 + (margin * i);
    var string_w = string_width(options[i]);
    var string_h = string_height(options[i]);
    
    if (point_in_rectangle(m_x, m_y, x1 - string_w /2 -30, y2 - string_h /2, x1 + string_w, y2 + string_h)){
        draw_set_color(c_black);
        index = i;
        if(mouse_check_button_pressed(mb_left)){
            if (index == 0){
				audio_play_sound(snd_click_menu,0,0);
                room_goto(Primeira);
                instance_create_layer(0, 0, layer, obj_transicao);
                obj_personagem.x = 70;
                obj_personagem.y = 191;
				instance_create_layer(0,0,"Instances", obj_controle2);
				
            }
            
            if (index == 1) {
				audio_play_sound(snd_click_menu,0,0);
				instance_create_layer(0,0,"Instances", obj_controle2);
                if file_exists("save.sav") {
                    ini_open("save.sav");
                    // Carrega informações do jogador
                    obj_personagem.x = ini_read_real("Jogador", "x_atual", 0);
                    obj_personagem.y = ini_read_real("Jogador", "y_atual", 0);
                    room_goto(ini_read_real("Jogador", "sala_atual", 0));
                    obj_personagem.level = ini_read_real("Jogador", "level_atual", 0);
                    obj_personagem.xp = ini_read_real("Jogador", "xp_atual", 0);
                    obj_personagem.vida = ini_read_real("Jogador", "vida_atual", 0);

                    // Carrega informações do inventário
                    var inventario = instance_find(obj_inventario, 0);
                    if (!is_undefined(inventario)) {
                        for (var j = 0; j < inventario.total_slots; j++) { // Renomeando para 'j'
                            inventario.grid_items[# Infos.Item, j] = ini_read_real("Inventario", "Item_" + string(j), -1);
                            inventario.grid_items[# Infos.Quantidade, j] = ini_read_real("Inventario", "Quantidade_" + string(j), -1);
                            inventario.grid_items[# Infos.Sprite, j] = ini_read_real("Inventario", "Sprite_" + string(j), -1);
                        }
                    }

                    ini_close();
                }
            }
            
            if (index == 2){
				audio_play_sound(snd_click_menu,0,0);
                room_goto(MaisOp);
            }
            
            if (index == 3){
				audio_play_sound(snd_click_menu,0,0);
                game_end();
            }
        }
    } else {
        draw_set_color(c_white);
    }
    
    draw_text(x1, y2, options[i]);
}

// ...


