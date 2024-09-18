// Verifica se o jogo está em fullscreen
if (window_get_fullscreen()) {
    // Se estiver em fullscreen, mudar para modo janela
    window_set_fullscreen(false);
} else {
    // Se estiver em modo janela, mudar para fullscreen
    window_set_fullscreen(true);
}
