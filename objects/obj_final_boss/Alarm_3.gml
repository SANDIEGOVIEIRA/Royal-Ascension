// Alarm 3
if (estado == scr_ataque1 || estado == scr_ataque2) {
    if (alarm[3] <= 0) {
        estado = scr_final_escolher_ataque;
        alarm[0] = tempo_intervalo;
    }
}
