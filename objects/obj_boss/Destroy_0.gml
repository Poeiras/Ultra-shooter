/// @description fim do boss

//Explosão
instance_create_layer(x,y,"Inimigos",obj_explosao3);
global.boss = false;
global.chefe ++;

// Camera
instance_create_layer(x,y,"Inimigos",obj_treme_boss);

//Objeto end
instance_create_layer(x,y,"Inimigos",obj_end);
instance_destroy(obj_control);