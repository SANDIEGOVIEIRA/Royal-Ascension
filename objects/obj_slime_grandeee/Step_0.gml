/// @description Inserir descrição aqui

// Executa o script de estado atual
script_execute(estado);

/// Ajustando a profundidade 
depth = -y;

// Verifica se a vida do slime chegou a zero
if vida <= 0 {
    // criar slimes pequenas ao morrer
    //repeat(2){
    //instance_create_layer(x, y, "Instances", obj_slime);
    //}
    audio_playing = false;
    global.inimigos_destruidos_fogo2 += 1;
    global.inimigos_destruidos_fogo3 += 1;
    obj_personagem.xp += 8;
    instance_destroy();
}
