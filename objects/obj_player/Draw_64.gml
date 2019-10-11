/// @description interface do player

draw_text(880,750, "Supertiro: " + string(quantidade));

var numero = 20;
var numeral = 20;
repeat (vida)
	{
		draw_sprite_ext(spr_player,image_index,880+numero,720,0.2,0.2,image_angle,c_white,1);
		numero +=20;
	}

repeat (shield)
	{	
		draw_sprite_ext(spr_escudo,image_index,880+numeral,700,0.2,0.2,image_angle,c_white,1);
		numeral +=20;
	}