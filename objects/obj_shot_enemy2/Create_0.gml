/// @description 
event_inherited();

speed = 3;

//movendo o tiro ate o player
if (instance_exists(obj_player)) {
	direction = point_direction(x, y, obj_player.x, obj_player.y);
}


image_angle = direction + 90;