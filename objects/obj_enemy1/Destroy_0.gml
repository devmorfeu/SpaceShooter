/// @description limpeza de memoria

instance_create_layer(x,y,layer, obj_explosion_enemy);

if(instance_exists(obj_controller)) {
	obj_controller.points_winner(_points);
}