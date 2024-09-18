
function action_end(){
	       action++;

if action >= array_length(cutscene){
	instance_destroy();

      }

}

function cutscene_wait(_segundos){
    timer++;
    
    if timer >= room_speed * _segundos{
        timer = 0;
		action_end();
   }

}

function cutscene_wait3(_segundos){
    obj_personagemcut.sprite_index = spr_personagem_parado_baixo;
    obj_personagemcut.x += _spd;
    timer++;
    
    if timer >= room_speed * _segundos{
        timer = 0;
        action++;
		
      action_end();
   }

}

function cutscene_walk_right(_segundos, _spd){
	obj_personagemcut.sprite_index = spr_personagem_correndo_direita; // Altera a sprite para a direita
    obj_personagemcut.x += _spd;
    timer++;
    
    if timer >= room_speed * _segundos{
        timer = 0;
        action++;
		
      action_end();

   }

}

function cutscene_walk_left(_segundos, _spd){
	obj_personagemcut.sprite_index = spr_personagem_correndo_esquerda;
obj_personagemcut.x -= _spd;
    timer++;
    
    if timer >= room_speed * _segundos{
        timer = 0;
        action++;
		
      action_end();

   }

}

function cutscene_walk_up(_segundos, _spd) {
	obj_personagemcut.sprite_index = spr_personagem_correndo_cima;
    obj_personagemcut.y -= _spd;
    timer++;
    
    if (timer >= room_speed * _segundos) {
        timer = 0;
        action++;
        action_end();
    }
}
