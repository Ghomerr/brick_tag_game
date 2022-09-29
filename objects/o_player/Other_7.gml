/// @desc Reset punch state
if (state == PLAYER_STATE.PUNCH) {
	state = PLAYER_STATE.IDLE;
	isBreaking = false;
}
