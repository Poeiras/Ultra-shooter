/// @description atirador

if (instance_exists(obj_player)) and ( y <= obj_player.y) 
	{
		alarm [0] = room_speed * irandom_range(2,4);
		instance_create_layer(x,y,"Tiros",obj_tiro_inimigo01);
	}
else 
	{
		alarm [0] = 0;
	}