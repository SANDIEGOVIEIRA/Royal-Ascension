/// Alarm[2] Event
if (x == posicao_1_x) {
    x = posicao_2_x;
} else {
    x = posicao_1_x;
}

y = posicao_y; // Mantém a posição y fixa

// Redefinir o alarme para disparar novamente após 1 a 3 segundos
alarm[2] = irandom_range(300, 500);
