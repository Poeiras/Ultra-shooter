/// @description texto dos pontos
if (room = rm_recorde)
	{
		draw_set_color(c_white);
		draw_set_font(fnt_abertura);
		draw_text(room_width/2,100,"MAIOR PORRADA DO UNIVERSO");
		draw_text(room_width/2,200,"Maior porrada: "+string(global.maxpontos));
		draw_text(room_width/2,250,"Ultima partida: "+string(global.lastpontos));
		draw_text(room_width/2,300,"Naves verdes mortas: "+string(global.verdes));
		draw_text(room_width/2,350,"Naves laranjas mortas: "+string(global.laranja));
		draw_text(room_width/2,400,"Chefes mortos: "+string(global.chefe));
	}
