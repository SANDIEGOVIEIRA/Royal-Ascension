// Decrementar o temporizador
timer--;
// Verificar se o temporizador chegou a zero
if (timer <= 0) {
    // Trocar para a sala desejada
    room_goto(target_room);
}
