/// @description configurações

if (x != clamp (x, xstart-30, xstart+30))
	{
		hspeed *= -1;
	}

if ( y < -32 )
	{
		instance_destroy();
	}