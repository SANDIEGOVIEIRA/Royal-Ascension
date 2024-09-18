/// @description Inserir descrição aqui
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
    var _guil = display_get_width();
    var _guia = display_get_height();

    var _mx = device_mouse_x_to_gui(0);
    var _my = device_mouse_y_to_gui(0);

    if (inventario == true) {
        var _invx = _guil / 2 - inventario_l / 2;
        var _invy = _guia / 2 - inventario_a / 2;

        draw_sprite_ext(spr_inventario, 0, _invx, _invy, escala, escala, 0, c_white, 1);
        draw_sprite_ext(ft_inventario2, 0, _invx + 590, _invy + 230, 0.42, 0.42, 0, c_white, 1);
		/// UI texto
		draw_set_font(fnt_pixel);
		draw_set_color(c_black);
		draw_text(650,515, "Level:");
		draw_text(790,515, obj_personagem.level);

        var ix = 0;
        var iy = 0;
        for (var i = 0; i < total_slots; i++) {
            var _slotsx = _invx + comeco_x + ((tamanho_slot + buffer) * ix);
            var _slotsy = _invy + comeco_y + ((tamanho_slot + buffer) * iy);

            if (point_in_rectangle(_mx, _my, _slotsx, _slotsy, _slotsx + tamanho_slot, _slotsy + tamanho_slot)) {
                draw_sprite_ext(spr_inventario_seletor, 0, _slotsx, _slotsy, escala, escala, 0, c_white, 1);

                if (mouse_check_button_pressed(mb_left)) {
                    // se nao tiver item selecionado:
                    if (item_selecionado == -1) {
                        item_selecionado = grid_items[# Infos.Item, i];
                        pos_selecionada = i;
                    } else {
                        // se tiver item selecionado:
                        // 1- se o item selecionado for igual do slot q vai ser colocado
                        if (item_selecionado == grid_items[# Infos.Item, i] && pos_selecionada != i && grid_items[# Infos.Sprite, i] == grid_items[# Infos.Sprite, pos_selecionada]) {
                            grid_items[# Infos.Quantidade, i] += grid_items[# Infos.Quantidade, pos_selecionada];

                            grid_items[# Infos.Item, pos_selecionada] = -1;
                            grid_items[# Infos.Quantidade, pos_selecionada] = -1;
                            item_selecionado = -1;
                            pos_selecionada = -1;
                        }
                        // 2- se o slot selecionado estiver vazio
                        else if (grid_items[# Infos.Item, i] == -1) {
                            grid_items[# Infos.Item, i] = grid_items[# Infos.Item, pos_selecionada];
                            grid_items[# Infos.Quantidade, i] = grid_items[# Infos.Quantidade, pos_selecionada];
                            grid_items[# Infos.Sprite, i] = grid_items[# Infos.Sprite, pos_selecionada];

                            grid_items[# Infos.Item, pos_selecionada] = -1;
                            grid_items[# Infos.Quantidade, pos_selecionada] = -1;
                            grid_items[# Infos.Sprite, pos_selecionada] = -1;
                            item_selecionado = -1;
                            pos_selecionada = -1;
                        }
                        // 3- trocar os itens
                        else if (grid_items[# Infos.Item, pos_selecionada] != grid_items[# Infos.Item, i] || grid_items[# Infos.Sprite, pos_selecionada] != grid_items[# Infos.Sprite, i]) {
                            var _item = grid_items[# Infos.Item, i];
                            var _quantidade = grid_items[# Infos.Quantidade, i];
                            var _spr = grid_items[# Infos.Sprite, i];

                            grid_items[# Infos.Item, i] = grid_items[# Infos.Item, pos_selecionada];
                            grid_items[# Infos.Quantidade, i] = grid_items[# Infos.Quantidade, pos_selecionada];
                            grid_items[# Infos.Sprite, i] = grid_items[# Infos.Sprite, pos_selecionada];

                            grid_items[# Infos.Item, pos_selecionada] = _item;
                            grid_items[# Infos.Quantidade, pos_selecionada] = _quantidade;
                            grid_items[# Infos.Sprite, pos_selecionada] = _spr;

                            item_selecionado = -1;
                            pos_selecionada = -1;
                        }
                    }
                }
            }

            var _sprite = grid_items[# Infos.Sprite, i];
            // Checar se tem item no slot
            if (grid_items[# Infos.Item, i] != -1) {
                // Imagem do item
                draw_sprite_ext(_sprite, grid_items[# Infos.Item, i], _slotsx, _slotsy, 1.5, 1.5, 0, c_white, 1);
                // Quantidade de items
                draw_set_font(fnt_pixel);
                draw_set_halign(fa_center);
                draw_text_colour_outline(_slotsx + tamanho_slot, _slotsy + tamanho_slot - 8, grid_items[# Infos.Quantidade, i], 4, c_black, 16, 100, 100);
            }

            ix++;
            if (ix >= slots_h) {
                ix = 0;
                iy++;
            }
        }
        // 4- Largar item selecionado
        if (mouse_check_button_pressed(mb_right)) {
            item_selecionado = -1;
            pos_selecionada = -1;
        }

        if (item_selecionado != -1) {
            draw_sprite_ext(grid_items[# Infos.Sprite, pos_selecionada], item_selecionado, _mx, _my, escala, escala, 0, c_white, 0.5);
        }
		draw_set_color(c_white);
    }
}
