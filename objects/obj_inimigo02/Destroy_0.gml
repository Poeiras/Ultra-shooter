/// @description explosão final

instance_create_layer(x, y, "Inimigos", obj_explosao);
var drop = irandom (100);

if (drop >=90)
	{
		instance_create_layer(x,y,"Player",obj_powerup);
	}