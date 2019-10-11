/// @description criação de inimigos

// Variável para definir o range de instancias criadas * nível do jogo
var repete = irandom_range(2,4) * global.nivel;

// laço de repetição quando o alarme trigga
repeat (repete)
	{
		// variáveis internas do laço
		var horiz = irandom_range(35,room_width-35); 
		var verti = irandom_range(-300,-50);
		var chance = irandom(100);
		var veloci = irandom_range(3,6);

		//condições para criação dentro do laço
		if (chance) >=85
			{
				var inimigo02 = instance_create_layer(horiz,verti,"Inimigos",obj_inimigo02);
				inimigo02.speed = veloci;
			}
		else
			{
				var inimigo01 =instance_create_layer(horiz,verti,"Inimigos",obj_inimigo01);
				inimigo01.speed = veloci;
			}
	}

// após o fim do laço, recontagem do alarme

if (instance_exists(obj_player) and global.boss = false)
	{
		alarm [0] = (room_speed * irandom_range(2,4)) * global.nivel;
	}
else
	{
		alarm [0] = 0;
	}

// Criação do Chefe
if (global.nivel == 5 and global.boss=false)
	{
		global.boss = true;
		instance_create_layer (room_width/2, -100, "Inimigos", obj_boss);
		audio_stop_all();
		show_debug_message("Boss criado");
	}

