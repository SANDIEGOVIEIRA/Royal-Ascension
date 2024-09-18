// estado
/// ajeitando a profundidade 
depth = -y;

// morrer
if vida <= 0 {
    if obj_personagem.vida < 20 { // Verifica se a vida do personagem é menor que
        obj_personagem.vida += 2;
    }
    instance_destroy();
}
