/// @description variáveis

speed = 10;
audio_play_sound(snd_tiro_inimigo,5,false);
if(instance_exists(obj_player))
	{
		direction = point_direction(x,y,obj_player.x,obj_player.y);
	}
	else 
	{
		direction = 270;
	}