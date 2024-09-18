// Verifica se o som já está tocando
if (!sound_playing && sound_to_play != -1) {
    audio_play_sound(sound_to_play, 1, false);
    sound_playing = true;
}

// Diminui o contador de tempo
time_to_destroy -= 1;

// Verifica se o tempo acabou e destrói o objeto
if (time_to_destroy <= 0) {
    if (sound_to_play != -1) {
        audio_stop_sound(sound_to_play);
    }
    instance_destroy();
}
