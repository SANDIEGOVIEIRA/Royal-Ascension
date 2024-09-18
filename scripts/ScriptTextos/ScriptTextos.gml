function scr_textos(){
	switch (npc_nome){
		case "Rei Philip":
			ds_grid_add_text("Aperte 'ESPAÇO' para avançar as falas da conversa !", img_personagem, 0, prin1, "Nicholas"); 
			ds_grid_add_text("Bom dia vossa majestade", img_personagem, 0, prin2, "Nicholas");
			ds_grid_add_text("Olá filho, como você está?", img_rei2, 1, rei1,"Rei Philip");
			ds_grid_add_text("Eu que pergunto pai, vossa alteza anda muito doente e mal esses dias, como está se sentindo?", img_personagem, 0, prin3,"Nicholas");
			ds_grid_add_text("Acho que piorei um pouco mas nada que um rei não possa aguentar.", img_rei2, 1, rei2,"Rei Philip");
			ds_grid_add_text("Você nunca muda né pai, andou se cuidando pelo menos?", img_personagem, 0, prin4,"Nicholas");
			ds_grid_add_text("Claro, eu estou a mais de uma semana no tratamento do curandeiro o bruxo Lucius.", img_rei2, 1, rei3,"Rei Philip");
			ds_grid_add_text("E se por acaso você vê-lo, ordene para que venha me ver imediatamente", img_rei2, 1, rei4,"Rei Philip");
			ds_grid_add_text("Claro vossa majestade.", img_personagem, 0, silencio,"Nicholas");
			break;
			case "Segundo corredor":
			ds_grid_add_text("Vossa Alteza, faz tempo que não o vejo.", img_bruxo, 1, corredor2_br1, "Bruxo Lucius");
			ds_grid_add_text("Quem é você, velhote?", img_personagem, 0, corredor2_prin1, "Príncipe Nicholas");
			ds_grid_add_text("Um antigo amigo de Vossa Majestade, o rei. Sou eu quem está tratando seu pai, Vossa Alteza... Ainda bem que te encontrei por aqui. Seu pai está péssimo e sua recuperação está lenta e demorada. Estou tentando alguns métodos de cura que conheço, e estão funcionando.", img_bruxo, 1, corredor2_br2, "Bruxo Lucius");
			ds_grid_add_text("Percebi que ele está mal só de ver o rosto dele. Se o método de cura está funcionando, então não tem com o que se preocupar, certo, velhote?", img_personagem, 0, corredor2_prin2, "Príncipe Nicholas");
			ds_grid_add_text("Então... era sobre isso mesmo que eu queria falar. Seu pai está cada vez pior, e a cura não está suprindo a doença. Isso está se agravando cada vez mais, e, se continuar assim, Vossa Majestade virá a falecer...", img_bruxo, 1, corredor2_br3, "Bruxo Lucius");
			ds_grid_add_text("Ele vai ficar bem", img_personagem, 0, corredor2_prin3, "Príncipe Nicholas");
			break;
			case "Lucius sala de treino":
			ds_grid_add_text("Tem algum jeito de ajudar meu pai?", img_personagem, 0, treino_prin1, "Príncipe Nicholas");
			ds_grid_add_text("Era exatamente sobre isso que eu queria falar, você é o unico que pode ajudar a salvar vossa majestade", img_bruxo, 1, treino_br1, "Bruxo Lucius");
			ds_grid_add_text("Oque preciso fazer?", img_personagem, 0, treino_prin2, "Príncipe Nicholas");
			ds_grid_add_text("Existe um elixir capaz de curar qualquer doença ou ferida, mas para consegui-lo não é simples", img_bruxo, 1, treino_br2, "Bruxo Lucius");
			ds_grid_add_text("Seja la como for, irei conseguir este elixir.", img_personagem, 0, treino_prin3, "Príncipe Nicholas");
			ds_grid_add_text("Para ter esse elixir, é preciso misturar os 4 elixis elementais, da terra, agua, ar e do fogo. que são protegidos por seus guardiões elementais.", img_bruxo, 1, treino_br3, "Bruxo Lucius");
			ds_grid_add_text("Aceito o desafio, por onde começamos?", img_personagem, 0, treino_prin4, "Príncipe Nicholas");
			ds_grid_add_text("Você tem coragem vossa alteza, o primeiro reino, é o reino da terra, venha abrirei um portal para irmos até la.", img_bruxo, 1, treino_br4, "Bruxo Lucius");
			break;
			case "Terceiro corredor":
			ds_grid_add_text("Vossa Alteza! desculpa... não era para ser tão alto...", img_serva, 1, corredor3_se1, "Serva Caterine");
			ds_grid_add_text("O que houve? Por que esse desespero todo?", img_personagem, 0, corredor3_prin1, "Príncipe Nicholas");
			ds_grid_add_text("O rei não está nem um pouco bem, você tem que ajudá-lo, olha isso aqui!! Estes são os lençóis da cama dele.", img_serva, 1, corredor3_se2, "Serva Caterine");
			ds_grid_add_text("Isto é sangue?", img_personagem, 0, corredor3_prin2, "Príncipe Nicholas");
			ds_grid_add_text("Sim, sim! Eu tive que limpar até o chão, que estava sujo. Não sei como Vossa Majestade está de pé... O pior é que o boato está se espalhando... Muitas pessoas do reino estão sem saber se é verdade ou não, se o rei corre risco de vida.", img_serva, 1, corredor3_se3, "Serva Caterine");
			ds_grid_add_text("Obrigado por me avisar. Vou ficar atento e irei dar um suporte maior para meu pai.", img_personagem, 0, corredor3_prin3, "Príncipe Nicholas");
			ds_grid_add_text("Por favor, Príncipe, ajude-o.", img_serva, 1, corredor3_se4, "Serva Caterine");
			break;
			case "Lucius agua1":
			ds_grid_add_text("Vossa alteza aqui é o reino elemental da água", img_bruxo, 1, agua1_br1, "Bruxo Lucius");
			ds_grid_add_text("Não vejo nada além de água aqui velhote, não vai me dizer que eu vou ter que enfrentar eles dentro da água", img_personagem, 0, agua1_prin1, "Príncipe Nicholas");
			ds_grid_add_text("Seria impossível você combater os espíritos enquanto está nadando, e carregar essa espada na água já seria um desafio. Não se preocupe, eu vou dar um jeito nisso.", img_bruxo, 1, agua1_br2,"Bruxo Lucius");
			ds_grid_add_text("Como você vai dar um jeito na água?", img_personagem, 0, agua1_prin2,"Príncipe Nicholas");
			ds_grid_add_text("A forma mais simples de você andar sobre a água é congelando-a.", img_bruxo, 1, agua1_br3,"Bruxo Lucius");
			ds_grid_add_text("Ice Age !!!", img_bruxo_geloo, 1, snd_escrever,"Bruxo Lucius");
			break;
			case "Espírito da água":
			ds_grid_add_text("Espere, não me ataque! Vi o que você fez com outros. Não sou igual a eles.", img_espirito_a, 1, snd_escrever, "Espírito da água");
			ds_grid_add_text("hum? entao vc nao é louca pra me matar entendi, oque vc quer?", img_personagem, 0, snd_escrever, "Príncipe Nicholas");
			ds_grid_add_text("Pelo contrário, eu vim pedir sua ajuda. Por favor, continue enviando nossas almas para o céu para descansarem em paz...", img_espirito_a, 1, snd_escrever,"Espírito da água");
			ds_grid_add_text("Esses são espíritos revoltados porque morremos de formas injustas... e ficam assim agressivos quando alguem se aproxima.", img_espirito_a, 1, snd_escrever,"Espírito da água");
			ds_grid_add_text("Então essas coisas já foram pessoas... Entendi, matando eles eu mando a alma pro céu?", img_personagem, 0, snd_escrever,"Nicholas");
			ds_grid_add_text("Isso mesmo, você está salvando a alma deles. Continue assim, por favor.", img_espirito_a, 1, snd_escrever,"Espírito da água");
			ds_grid_add_text("Farei isso, pode deixar!", img_personagem, 0, snd_escrever,"Nicholas");
			break;
			case "Lucius agua2":
			ds_grid_add_text("Daqui você já pode continuar, Vossa Alteza.", img_bruxo, 1, silencio, "Bruxo Lucius");
			ds_grid_add_text("Boa sorte, Alteza. Sei que você vai conseguir.", img_bruxo, 1, silencio,"Bruxo Lucius");
			break;
			case "Lucius pre boss":
			ds_grid_add_text("Tome cuidado, alteza. Logo à frente está o segundo guardião elemental.", img_bruxo, 1, preboss_agua_br1, "Bruxo Lucius");
			ds_grid_add_text("Ele não pode ser atingido por flechas, então terá que travar um combate corpo a corpo com ele.", img_bruxo, 1, preboss_agua_br2, "Bruxo Lucius");
			ds_grid_add_text("Pode deixar comigo.", img_personagem, 0, preboss_agua_prin1, "Príncipe Nicholas");
			break;
			case "Lucius boss agua":
			ds_grid_add_text("Confesso que fiquei preocupado desta vez, Vossa Alteza está bem?", img_bruxo, 1, posboss_agua_br1, "Bruxo Lucius");
			ds_grid_add_text("Droga... essa foi por pouco", img_personagem, 0, posboss_agua_prin1, "Príncipe Nicholas");
			ds_grid_add_text("Não importa, eu tenho que continuar e ajudar meu pai o mais rápido possível.", img_personagem, 0, posboss_prin2,"Príncipe Nicholas");
			ds_grid_add_text("Trouxe algo para te ajudar, Alteza. Tome isto e vai se sentir melhor.", img_bruxo, 1, posboss_agua_br2,"Bruxo Lucius");
			break;
			case "Lucius boss agua2":
			ds_grid_add_text("Boa sorte vossa alteza, estarei sempre por perto para continuar te ajudando.", img_bruxo, 1, silencio, "Bruxo Lucius");
			break;
			case "Lucius Terra1":
			ds_grid_add_text("Quebrando esse coração você será curado vossa alteza.", img_bruxo, 1, terra1_br, "Bruxo Lucius");
			break;
			case "Lucius Terra3":
			ds_grid_add_text("Tome cuidado Nicholas, aqui é a toca do Ogro, o guardião do elixir da terra", img_bruxo, 1, terra3_br1, "Bruxo Lucius");
			ds_grid_add_text("Eu dou conta disso.", img_personagem, 0, terra3_prin1, "Príncipe Nicholas");
			break;
			case "Lucius pos ogro":
			ds_grid_add_text("Magnifico! seu talento é diferente principe Nicholas", img_bruxo, 1, ogro_br1, "Bruxo Lucius");
			ds_grid_add_text("Obrigado Lucius, onde fica o outro?", img_personagem, 0, ogro_prin1, "Príncipe Nicholas");
			ds_grid_add_text("Não quer nem descansar um pouco? isso que é um espirito de guerreiro real.", img_bruxo, 1, ogro_br2, "Bruxo Lucius");
			ds_grid_add_text("Quero salvar meu pai o mais rapido possivel.", img_personagem, 0, ogro_prin2, "Príncipe Nicholas");
			break;
			case "Lucius Fogo1":
			ds_grid_add_text("Que porta gigante, mas não tem fechaduras, como iremos entrar?", img_personagem, 0, fogo1_prin1, "Príncipe Nicholas");
			ds_grid_add_text("Esta é a entrada para o reino de Talùrdor, é onde esta sendo protegido o elixir do fogo, a entrada é protegda por magias antigas, forjadas pelos mais poderosos feitiçeiros que já existiram.", img_bruxo, 1, fogo1_br1, "Bruxo Lucius");
			ds_grid_add_text("Esta preparado? aqui é o ambiente mais hostil que você vai visitar em sua vida, nunca conheci alguem que conseguiu sair com vida daqui.", img_bruxo, 1, fogo1_br2, "Bruxo Lucius");
			ds_grid_add_text("Não cheguei tão longe para falhar no final, sairei daqui com o elixir do fogo, custe oque custar.", img_personagem, 0, fogo1_prin2, "Príncipe Nicholas");
			break;
			case "Espirito de fogo":
			ds_grid_add_text("Quem está aí? Mostra-se espírito!", img_personagem, 0, esp1_princ1, "Príncipe Nicholas");
			ds_grid_add_text("Acalme-se, sou apenas um espirito do fogo", img_estatua, 1, esp1_e1, "Espirito do fogo");
			ds_grid_add_text("Se desejas prosseguir, enfrentarás um desafio. Escolha sabiamente, pois uma das entradas leva ao caminho que deseja, enquanto a outra te aprisionará nas chamas eternas.", img_estatua, 1, esp1_e2, "Espirito do fogo");
			ds_grid_add_text("Estou preparado para o desafio. Qual é a charada, então?", img_personagem, 0, esp1_princ2, "Príncipe Nicholas");
			ds_grid_add_text("Entre mim e a chama arde uma fogueira, Escolha sabiamente, sem ser ligeiro.Se ao norte fores, terás a sorte, Mas ao sul, encontrarás a morte.", img_estatua, 1, esp1_e3, "Espirito do fogo");
			ds_grid_add_text("Intrigante. Se ao norte for, terei sorte, e ao sul, encontrarei a morte... A escolha certa deve estar relacionada à segurança, então o norte seria a escolha mais sensata.", img_personagem, 0, esp1_princ3, "Príncipe Nicholas");
			break;
			case "Espirito de fogo2":
			ds_grid_add_text("Nunca vi um guerreiro com tanta destreza quanto você. Agora continue seu caminho.", img_estatua, 1, fogo3_esp, "Espirito do fogo");
			break;
			case "Lucius pre boss fogo":
			ds_grid_add_text("Vossa alteza irei usar meu ultimo recurso de cura em você agora.", img_bruxo, 1, preboss_fogo_br1, "Bruxo Lucius");
			ds_grid_add_text("Deixe-me advinhar, é hora de provar que eu consigo sair daqui com o elixir.", img_personagem, 0, preboss_fogo_princ1, "Príncipe Nicholas");
			ds_grid_add_text("Exato... desejo sorte a vossa alteza.", img_bruxo, 1, preboss_fogo_br2, "Bruxo Lucius");
			break;
			case "Lucius pos boss fogo":
			ds_grid_add_text("Aqui está o último elixir que precisava, Lucius depressa, vamos ao castelo.", img_personagem, 0, posboss_fogo_prin1, "Príncipe Nicholas");
			ds_grid_add_text("Esplêndido, finalmente eu consegui todos, vamos o rei nos aguarda.", img_bruxo, 1, posboss_fogo_br1, "Bruxo Lucius");
			ds_grid_add_text("Minhas pernas tremem... tem mais alguma cura sobrando?", img_personagem, 0, posboss_fogo_prin2, "Príncipe Nicholas");
			ds_grid_add_text("Primeiro vamos ao castelo, quando chegarmos eu te curo.", img_bruxo, 1, posboss_fogo_br2, "Bruxo Lucius");
			break;
			case "Lucius Ar1":
			ds_grid_add_text("Estamos no reino do Ar, aqui a maioria dos inimigos não são acertados por espadas, nenhum combate corpo a corpo.", img_bruxo, 1, ar1_br1, "Bruxo Lucius");
			ds_grid_add_text("Ainda bem, meus braços estão cansados, vou derrotalos usando meu arco", img_personagem, 0, ar1_prin1, "Príncipe Nicholas");
			ds_grid_add_text("Muito bem vossa alteza, admiro muito sua destreza.", img_bruxo, 1, ar1_br2, "Bruxo Lucius");
			break;
			case "Lucius Ar3":
			ds_grid_add_text("Consigo ouvir... é o barulho do guardião elemental do ar, ja enfrentei ele uma vez.", img_bruxo, 1, ar3_br1, "Bruxo Lucius");
			ds_grid_add_text("Que vento forte, tenho que ir logo, meu pai me aguarda.", img_personagem, 0, ar3_prin1, "Príncipe Nicholas");
			ds_grid_add_text("Use apenas sua espada, ele não é atingido por disparos como flechas.", img_bruxo, 1, ar3_br2, "Bruxo Lucius");
			break;
			case "Lucius pos boss ar":
			ds_grid_add_text("Bravo! Bravo! vossa alteza, você esta se tornando um lendario guerreiro.", img_bruxo, 1, posboss_ar_br, "Bruxo Lucius");
			ds_grid_add_text("Esta no sangue da minha familia, não espere menos.", img_personagem, 0, posboss_ar_prin, "Príncipe Nicholas");
			break;
			case "Caterine ferida":
			ds_grid_add_text("Caterine oque houve!?", img_personagem, 0, ferida_princ1, "Príncipe Nicholas");
			ds_grid_add_text("Ajude-nos vossa alteza...", img_serva, 1, ferida_se1, "Serva Caterine");
			ds_grid_add_text("Lucius o bruxo ele... ele é maligno, eu descobri que o rei estava sendo envenenado e queria te contar mas eu nao te achava em lugar algum, o bruxo que estava evenenando vossa majestade o rei", img_serva, 1, ferida_se2, "Serva Caterine");
			ds_grid_add_text("O quê!? Esse insolente fez isso? Tenho que salvar meu pai agora mesmo.", img_personagem, 0, ferida_princ2, "Príncipe Nicholas");
			ds_grid_add_text("Espera! Não tem mais como, o rei já está morto e todos do reino estão à sua espera. Acham que você abandonou sua coroa.", img_serva, 1, ferida_se3, "Serva Caterine");
			ds_grid_add_text("Você precisa salvar o reino. Lucius foi para a sala do rei. Eu vou ficar bem, vá detê-lo, você é o único que pode.", img_serva, 1, ferida_se4, "Serva Caterine");
			ds_grid_add_text("Me espere, eu voltarei logo logo.", img_personagem, 0, ferida_princ3, "Príncipe Nicholas");
			break;
			case "Lucius pre final":
			ds_grid_add_text("Me devolva o elixir da vida!", img_personagem, 0, final_princ1, "Príncipe Nicholas");
			ds_grid_add_text("Seu tolo, com essa mistura de elixir eu finalmente poderei ter meus poderes antigos de volta.", img_bruxo, 1, final_br1, "Bruxo Lucius");
			ds_grid_add_text("Serei o rei de EverHart, a não ser que você queira o destino igual ao de seu pai.", img_bruxo, 1, final_br2, "Bruxo Lucius");
			ds_grid_add_text("Você vai pagar pelo que fez com meu pai!", img_personagem, 0, final_princ2, "Príncipe Nicholas");
			ds_grid_add_text("Você quer o elixir? então vem pegar.", img_bruxo, 1, final_br3, "Bruxo Lucius");
			break;
			case "Caterine pos final":
			ds_grid_add_text("Beba isto, vai melhorar...", img_personagem, 0, ultima_fala, "Príncipe Nicholas");
			ds_grid_add_text("...", img_serva, 1, silencio, "Serva Caterine");
			break;
	}
}

function ds_grid_add_row(_grid){
	ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);
}

function ds_grid_add_text(_texto, _retrato, _lado, _som, _nome){
	var _grid = texto_grid; // Corrigido para usar a variável correta
	var _y = ds_grid_add_row(_grid);

	_grid[# 0, _y] = _texto;
	_grid[# 1, _y] = _retrato;
	_grid[# 2, _y] = _lado;
	_grid[# 3, _y] = _som;
	_grid[# 4, _y] = _nome;
}
