/// @desc Handle inputs to move player and update animation

// Handle inputs
inputs.up = keyboard_check(ord(key_up));
inputs.right = keyboard_check(ord(key_right));
inputs.down = keyboard_check(ord(key_down));
inputs.left = keyboard_check(ord(key_left));
inputs.action = keyboard_check(ord(key_action));

// Update character movement
hMove = inputs.right - inputs.left;
vMove = inputs.down - inputs.up;

// Direction regarding the current moves
myDirection = vMove > 0 ? DIRECTION.DOWN : 
	(vMove < 0 ? DIRECTION.UP : 
		(hMove > 0 ? DIRECTION.RIGHT : 
			(hMove < 0 ? DIRECTION.LEFT : myDirection)
		)
	);
	
// Update punch state
if (inputs.action != 0) {  
	state = PLAYER_STATE.PUNCH;
}
	
// Update self data
if (state != PLAYER_STATE.PUNCH) {
	updatePosition(self);
} else {
	doPunch(self);	
}
updateAnimation(self);