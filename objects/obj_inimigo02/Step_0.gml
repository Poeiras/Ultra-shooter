/// @description fim da instance

//Alarme da mudança de direção
if (y >= 50 and movendo=true)
	{
		direction = irandom_range(230,290);
		movendo = false;
	}

// fim da instância
if ( y > room_height + 100 )
	{
		instance_destroy();
	}

if ( x <= -100 or x >=room_width+100 )
	{
		instance_destroy();
	}

if (vidainimigo <=0)
	{
		instance_destroy();
	}