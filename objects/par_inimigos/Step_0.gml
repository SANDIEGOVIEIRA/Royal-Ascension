// estado
script_execute(estado);

/// ajeitando a profundidade 
depth = -y;

// morrer
if vida <=0{
	audio_playing = false;
	audio_playing2 = false;
	obj_personagem.xp += 1;
	instance_destroy();
}