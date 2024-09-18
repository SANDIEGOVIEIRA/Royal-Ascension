// Alarm 0
if (estado == scr_final_perseguindo) {
    estado = scr_final_escolher_ataque;
    alarm[0] = tempo_intervalo;
} else {
    estado = scr_final_perseguindo;
    alarm[0] = tempo_perseguindo;
}
