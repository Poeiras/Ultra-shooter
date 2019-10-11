/// @description explosão final

//Fim da instância
instance_create_layer(x, y, "Inimigos", obj_explosao);

//Drops
var drop = random (100);

if (drop >=95)
	{
		instance_create_layer(x,y,"Player",obj_powerup);
	}
	
