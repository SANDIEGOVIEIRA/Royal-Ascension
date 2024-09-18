/// @description Menu de Opções
/// como bloquear tal coisa em certas salas
#region Bloquear ação em salas
var blocked_rooms = ["Menu", "MaisOp", "OpSom", "OpComoJogar"];

// Pega o nome da sala atual
var room_name = room_get_name(room);

// Função auxiliar para verificar se um valor está no array
function is_in_array(array, value) {
    for (var i = 0; i < array_length(array); i++) {
        if (array[i] == value) {
            return true;
        }
    }
    return false;
}

// Verifica se a sala atual está na lista de salas bloqueadas
if (!is_in_array(blocked_rooms, room_name)) {
	#endregion
////
    var _guil = display_get_width();
    var _guia = display_get_height();

    if opcoes == true {
        var _invx = _guil / 2 - opcoes_l / 2;
        var _invy = _guia / 2 - opcoes_a / 2;

        draw_sprite_ext(spr_abrir_op, 0, _invx, _invy, escala, escala, 0, c_white, 1);

        var _mx = device_mouse_x_to_gui(0);
        var _my = device_mouse_y_to_gui(0);

        draw_set_font(fnt_menu);
        var x1 = _guil / 2;
        var y1 = _guia / 2;
        var margin = 100;

        draw_set_halign(fa_center);
		draw_set_font(fnt_menu);
        for (var i = 0; i < op_max; i++) {
            var y2 = y1 + (margin * i);
            var string_w = string_width(options[i]);
            var string_h = string_height(options[i]);

            if (point_in_rectangle(_mx, _my, x1 - string_w / 2, y2 - string_h / 2, x1 + string_w / 2, y2 + string_h / 2)) {
                draw_set_color(c_red);
                index = i;
                if (mouse_check_button_pressed(mb_left)) {
                    if (index == 0) {
                        opcoes = false;
                    }

                    if (index == 1) {
                        if file_exists("save.sav") {
                            file_delete("save.sav");
                        }
                        ini_open("save.sav");
                        // Salvando informações do jogador
                        ini_write_real("Jogador", "x_atual", obj_personagem.x);
                        ini_write_real("Jogador", "y_atual", obj_personagem.y);
                        ini_write_real("Jogador", "sala_atual", room);
                        ini_write_real("Jogador", "level_atual", obj_personagem.level);
                        ini_write_real("Jogador", "xp_atual", obj_personagem.xp);
                        ini_write_real("Jogador", "vida_atual", obj_personagem.vida);

                        // Salvando informações do inventário
                        var inventario = instance_find(obj_inventario, 0);
                        if (!is_undefined(inventario)) {
                            for (var j = 0; j < inventario.total_slots; j++) {
                                ini_write_real("Inventario", "Item_" + string(j), inventario.grid_items[# Infos.Item, j]);
                                ini_write_real("Inventario", "Quantidade_" + string(j), inventario.grid_items[# Infos.Quantidade, j]);
                                ini_write_real("Inventario", "Sprite_" + string(j), inventario.grid_items[# Infos.Sprite, j]);
                            }
                        }

                        ini_close();
                        show_message("Jogo Salvo");
                    }

                    if (index == 2) {
                        game_end();
                    }
                }
            } else {
                draw_set_color(c_white);
            }

            draw_text(x1, y2, options[i]);
        }
    }
}
