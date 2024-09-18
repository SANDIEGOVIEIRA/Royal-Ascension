/// @description Inserir descrição aqui
opcoes = false;
escala = 3;

comeco_x = 15 * escala;
comeco_y = 24 * escala;

opcoes_l = sprite_get_width(spr_abrir_op) * escala;
opcoes_a = sprite_get_height(spr_abrir_op) * escala;

options = ["Continuar", "Salvar Jogo", "Fechar Jogo"]; // Defina as opções do menu aqui
op_max = array_length(options);
index = 0;