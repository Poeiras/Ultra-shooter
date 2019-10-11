/// @description destruindo inimigos
instance_destroy();
instance_destroy(other);
obj_control.expatual +=1;
global.verdes ++;

//Tremer a tela
instance_create_layer(x,y,"Inimigos",obj_treme);