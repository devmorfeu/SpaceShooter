/// @description Iniciador do alarm
 
//room_speed =  1 segundo
alarm[0] = room_speed * 5;

//sistema de pontos e level
player_points = 0;
next_level = 10;
level = 1;

///@method points_winner(_points)
points_winner = function(_points) {

	player_points += _points;
	
	if(player_points > next_level) {
		level += 1;
		
		next_level *= 2;
	}
}

//sistema de level

create_enemy = function() {
	
	var enemy = obj_enemy1;

	var change = random_range(0, level);

	if(change > 2) {
		enemy = obj_enemy2	
	}

	//Criação aleatoria do inimigo
	instance_create_layer(random_range(64, 1824),random_range(-96, -1500), "Enemy", enemy)

}