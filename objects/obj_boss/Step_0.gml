/// @description

wait_state--;
if (wait_state <= 0) {
	actual_state = choose("state3","state3", "state3", "state3");
	
	wait_state = delay_state;
}

if (actual_state == "state1") {
	
	state_01();
	
} else if (actual_state == "state2") {
	
	state_02();

} else if (actual_state == "state3") {
	
	state_03();

} else {

}