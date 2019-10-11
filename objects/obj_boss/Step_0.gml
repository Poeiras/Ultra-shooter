/// @description estados e funções

//Delay para os tiros, contador para os estados

contador ++;
delay ++;

// Entrada do boss

if (y >= 120 and estado = 4)
	{
		entrada = false;	
		alarm[0] = 10;
	}

//transição de estados
if (contador = room_speed * 5 and entrada = false)
	{
		estado = irandom(3);
		delay = 0;
		contador = 0;
	}

//Verificando a posição para transitar na tela
if (x <= 96)
	{
		movimento = true;
	}
if (x >= room_width*0.9)
	{
		movimento = false;
	}

// Configuração dos estados
if (estado = 0)
	{
		if (movimento = true)
		{
			x +=4;
		}
		if (movimento = false)
		{
			x -= 4;
		}
	}

if (estado = 1)
	{
		if (movimento = true)
		{
			x +=1;
		}
		if (movimento = false)
		{
			x -= 1;
		}
		if (delay >45)
			{
				instance_create_layer(x,y+30,"Inimigos",obj_tiro_inimigo);
				delay = 0;
			}
	}
	
if (estado = 2)
	{
		if (movimento = true)
		{
			x +=2.5;
		}
		if (movimento = false)
		{
			x -= 2.5;
		}
		if (delay >50)
			{
				instance_create_layer(x-72.5,y+30,"Inimigos",obj_tiro_inimigo);
				instance_create_layer(x+72.5,y+30,"Inimigos",obj_tiro_inimigo);
				delay = 0;
			}
	}

if (estado = 3)
	{
	if (movimento = true)
		{
			x +=1;
		}
		if (movimento = false)
		{
			x -= 1;
		}
		if (delay ==45)
			{
				instance_create_layer(x+3,y+20,"Inimigos",obj_tiro_inimigo);
			}
		if (delay ==60)
			{
				instance_create_layer(x-72,y+30,"Inimigos",obj_tiro_inimigo);
				instance_create_layer(x+72,y+30,"Inimigos",obj_tiro_inimigo);
				delay = 0;
			}
	}

if (estado = 4 and entrada = true)
	{
		if (movimento = true)
		{
			y +=3;
			life = 100;
		}
	}

//Fim do boss

if (life <= 0)
	{
		instance_destroy();
	}
