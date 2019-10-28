/// @description config player
//as variáveis só checam os botões

var esq = keyboard_check(vk_left);
var dir = keyboard_check(vk_right);
var cima = keyboard_check(vk_up);
var baixo = keyboard_check(vk_down);
var tiro = keyboard_check_pressed (vk_space);
var escudo = keyboard_check_pressed(ord ("B"));

// Operação de movimento = (1 - 0) * velocidade = movimento
var horizontal = (dir - esq ) * velocidade;
var vertical = (baixo - cima ) * velocidade;

// as mudanças dos eixos são operações feitas pelas variáveis positivas
x += horizontal;
y += vertical;
x = clamp(x,47, room_width - 47);
y = clamp(y, 32, room_height - 32);


// Configuração dos tiros
if (supertiro = false)
{
	if (tiro)
		{
			instance_create_layer(x,y-10,"Tiros",obj_tiro01);
			quantidade = 0;
			audio_play_sound(snd_tiro_player,10, false);
		}
}

if (supertiro = true)
{
	if (tiro)
		{
			instance_create_layer(x,y-10,"Tiros",obj_tiro01);
			instance_create_layer(x,y-10,"Tiros",obj_tiro02);
			quantidade -= 1;
		}
	if (quantidade <= 0)
		{
			supertiro = false;
		}
}

// configuração do escudo

if (escudo and shield >=1)
	{
		instance_create_layer(x,y,"Player",obj_escudo);
		shield --;
		audio_play_sound(snd_escudo_aberto,8, false);
	}

// Configuração da vida do player

if (vida <= 0) 
{
	instance_destroy();
}

