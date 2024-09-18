// Definindo as opções do menu
options = ["Tentar Novamente", "Recomeçar do inicio", "Fechar Jogo"];
op_max = array_length(options);
index = 0;

// Create event
animation_speed = 7.2; // Velocidade da animação (pode ajustar conforme necessário)
rect_height_top = 0; // Altura inicial do retângulo superior
rect_height_bottom = 0; // Altura inicial do retângulo inferior
animation_done = false; // Flag para verificar se a animação terminou
