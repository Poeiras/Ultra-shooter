/// @description atirador
if instance_exists(obj_player) and (y >= 0)
	{
		if ( y <= obj_player.y)
			{
				alarm [0] = room_speed * irandom_range(1,2);
				instance_create_layer(x,y,"Tiros",obj_tiro_inimigo);
			}
	}
else 
	{
		alarm [0] = 0;
	}