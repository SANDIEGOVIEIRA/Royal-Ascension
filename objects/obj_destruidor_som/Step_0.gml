// Step Event do obj_checker

// Verifica se existe uma instância de obj_soundtrack
var soundtrack_instance = instance_find(obj_soundtrack, 0);

if (soundtrack_instance != noone) {
    // Destrói a instância do obj_soundtrack
    with (soundtrack_instance) {
        audio_stop_sound(audio_to_play);
        audio_stop_sound(audio_to_play);
        audio_stop_sound(audio_to_play);
        audio_stop_sound(snd_chuva1);
    }
}
