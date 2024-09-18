// Step Event do obj_checker

// Verifica se existe uma instância de obj_soundtrack
var soundtrack_instance = instance_find(obj_soundtrack2, 0);

if (soundtrack_instance != noone) {
    // Destrói a instância do obj_soundtrack
    with (soundtrack_instance) {
        audio_stop_sound(audio_to_play);
    }
}
