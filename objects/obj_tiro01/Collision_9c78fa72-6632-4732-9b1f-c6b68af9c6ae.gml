/// @description destruindo inimigos

//explode o tiro
instance_destroy(other);
obj_control.expatual +=1.5;
global.laranja ++;

//Tremer a tela
instance_create_layer(x,y,"Inimigos",obj_treme);