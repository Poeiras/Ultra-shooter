/// @description barra de vida

if ( y >=120)
{
// Texto da barra
	draw_text(32,90,life);

// Configurações da barra
	draw_rectangle_color(30,120,life+30,130,c_black,c_blue,c_black,c_blue,false);
	draw_rectangle(30,120,130,130,true);
}