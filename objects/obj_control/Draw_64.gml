/// @description Interface

//Fonte
draw_set_color(c_white);
draw_set_font(fnt_pontos);

//posições dos mostradores
draw_text (40,20,"Fase: " + string (global.nivel));
draw_text (50,40,"Pontos: " + string (int64(expatual)));
draw_text (70,60,"Proxima fase: " + string (int64(expnivel-expatual)));