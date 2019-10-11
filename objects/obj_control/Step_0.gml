/// @description configurações de níveis

// Configuração dos pontos
if (expatual > global.maxpontos)
	{
		global.maxpontos = expatual;
	}

global.lastpontos = expatual;

//configuração da subida de nível
if (expatual >= expnivel)
	{
		global.nivel +=1;
		expatual = 0;
		expnivel +=1;
	}

if (global.nivel == 5)
	{
		expatual = 0;
	}

if (global.boss == true)
	{
		instance_destroy(obj_inimigo01);
		instance_destroy(obj_inimigo02);
	}