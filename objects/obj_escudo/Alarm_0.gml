/// @description redução das frames e fim do escudo

image_index --;

if (image_index < 0)
	{
		instance_destroy();
		audio_play_sound(snd_escudo_fechado,8, false);
	}
else
	{
		alarm [0] = room_speed * 1;
	}