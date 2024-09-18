
if instance_exists(obj_dialogo){
	global.dialogo = true;
}

if keyboard_check_pressed(ord("E")) || keyboard_check_pressed(ord("Q")) {
    e_pressionada = !e_pressionada; // Inverte o estado da tecla E
}