// Verifica se o objeto obj_soundtrack está na sala específica
if (room != Agua5) {
	instance_destroy();
	instance_destroy(obj_soundtrack);
    // Se o objeto não estiver na sala específica
    // Pare imediatamente a reprodução do áudio, se estiver tocando
    audio_stop_sound(audio_to_play);
} else {
    // Se o objeto estiver na sala específica e o áudio não estiver tocando
    if (!audio_is_playing(audio_to_play)) {
        // Reproduz o áudio novamente em loop
        audio_play_sound(audio_to_play, true, 0);
    }
}
