// estado
/// ajeitando a profundidade 
depth = -y;

// morrer
if vida <= 0 {
	
	global.inimigos_destruidos_castelo += 1;
    instance_destroy();
}
