// estado
script_execute(estado);

/// ajeitando a profundidade 
depth = -y;

// morrer
if vida <=0{
	obj_personagem.xp += 1;
	audio_playing = false;
	instance_destroy();
}