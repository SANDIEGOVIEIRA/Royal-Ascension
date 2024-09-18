/// @description Inserir descrição aqui
if inicializar == false {
    scr_textos();
    inicializar = true;
    alarm[0] = 1;
    alarm[1] = 22;
}

// Se apertar Esc enquanto esta no dialogo
if keyboard_check_pressed(vk_escape) {
	global.dialogo = false;
	audio_stop_sound(texto_grid[# Infoss.Som, pagina]);
    instance_destroy();
}

// Se apertar Espaço enquanto esta no dialogo
if keyboard_check_pressed(ord(" ")) {
    if caractere < string_length(texto_grid[# Infoss.Texto, pagina]) {
        caractere = string_length(texto_grid[# Infoss.Texto, pagina]);
    } else {
        if audio_is_playing(texto_grid[# Infoss.Som, pagina]) {
            audio_stop_sound(texto_grid[# Infoss.Som, pagina]); // Para a reprodução do áudio anterior
        }
        alarm[0] = 1;
        caractere = 0;
		
        if pagina < ds_grid_height(texto_grid) - 1 {
            pagina++;
            alarm[1] = 2;
        } else {
            global.dialogo = false;
            instance_destroy();
			//room_goto(Agua1);
			// Verificar se é o diálogo específico para a transição de sala
            if (npc_nome == "Lucius agua1") {
              room_goto(Agua2);
        }else if (npc_nome == "Rei Philip") {
			var obj_a_destruir_castelo2 = instance_find(inst_22A588AD, 0);
			if (obj_a_destruir_castelo2 != noone) {
			instance_destroy(obj_a_destruir_castelo2);
			}
			}
			else if (npc_nome == "Segundo corredor") {
			var obj_a_destruir_castelo3 = instance_find(inst_4BB761CD, 0);
			if (obj_a_destruir_castelo3 != noone) {
			instance_destroy(obj_a_destruir_castelo3);
			}
			}
			else if (npc_nome == "Terceiro corredor") {
			var obj_a_destruir_castelo4 = instance_find(inst_7898429C, 0);
			if (obj_a_destruir_castelo4 != noone) {
			instance_destroy(obj_a_destruir_castelo4);
			}
			}
			else if (npc_nome == "Lucius sala de treino") {
			instance_create_layer(317, 230, "Instances", obj_portal_terra);
			obj_bruxo.nome = "Lucius boss agua2";
			}
			else if (npc_nome == "Lucius boss agua") {
			obj_personagem.vida = 22;
			instance_create_layer(338, 64, "Instances", obj_portal_ar);
			obj_bruxo.nome = "Lucius boss agua2";
			}
			else if (npc_nome == "Lucius Terra1") {
			instance_create_layer(760, 200, "Instances", obj_coracao5);
			var obj_a_destruir_terra1 = instance_find(inst_38CD2158, 0);
			if (obj_a_destruir_terra1 != noone) {
			instance_destroy(obj_a_destruir_terra1);
			obj_bruxo.nome = "Lucius boss agua2";
			}
			}
			else if (npc_nome == "Lucius pos ogro") {
			instance_create_layer(225, 160, "Instances", obj_portal_agua);
			obj_personagem.vida = 20;
			}
			else if (npc_nome == "Lucius Terra3") {
			var obj_a_destruir_terra3 = instance_find(inst_38CD2158_3, 0);
			if (obj_a_destruir_terra3 != noone) {
			instance_destroy(obj_a_destruir_terra3);
			obj_bruxo.nome = "Lucius boss agua2";
			}
			}
			else if (npc_nome == "Lucius Fogo1") {
			instance_create_layer(283, 23, "Instances", obj_portal_inicio_fogo);
			}
			else if (npc_nome == "Espirito de fogo") {
			instance_create_layer(770, 97, "Instances", obj_portal_arena);
			instance_create_layer(770, 208, "Instances", obj_portal_principal);
			}
			else if (npc_nome == "Espirito de fogo2") {
			instance_create_layer(690, 400, "Instances", obj_portal_principal);
			}
			else if (npc_nome == "Lucius pre boss fogo") {
			instance_create_layer(1245, 203, "Instances", obj_portal_bosss);
			}
			else if (npc_nome == "Lucius pos boss fogo") {
			instance_create_layer(853, 411, "Instances", obj_portal_castelo);
			instance_destroy(obj_bruxo);
			}
			else if (npc_nome == "Lucius Ar1") {
			var obj_a_destruir_ar1 = instance_find(inst_2C56817C, 0);
			if (obj_a_destruir_ar1 != noone) {
			instance_destroy(obj_a_destruir_ar1);
			}
			}
			else if (npc_nome == "Lucius Ar3") {
			var obj_a_destruir_ar3 = instance_find(inst_38CD2222, 0);
			if (obj_a_destruir_ar3 != noone) {
			instance_destroy(obj_a_destruir_ar3);
			obj_bruxo.nome = "Lucius boss agua2";
			}
			}
			else if (npc_nome == "Lucius pos boss ar") {
			instance_create_layer(360, 88, "Instances", obj_portal_fogo);
			obj_bruxo.nome = "Lucius boss agua2";
			
			}
			else if (npc_nome == "Caterine ferida") {
			var obj_a_destruir_castelofim = instance_find(inst_4BC6D819, 0);
			if (obj_a_destruir_castelofim != noone) {
			instance_destroy(obj_a_destruir_castelofim);
			}
			obj_personagem.vida = 26;
			}
			else if (npc_nome == "Lucius pre final") {
			instance_create_layer(x +2 , y -50, "Instances", obj_portal_final);
			instance_destroy(obj_bruxo);
			}
			else if (npc_nome == "Caterine pos final") {
			room_goto(Quarta);
			}
			//else if (npc_nome == "Nome do Dialogo") {
			 //room_goto(Agua2);
			 //instance_create_layer(175, 82, "Instances", obj_coracao5);
			//}
			

}
}
}