/// @desc Init vars

myDirection = DIRECTION.DOWN;
state = PLAYER_STATE.IDLE;

// Get inputs
inputs = {
	left: 0,
	right: 0,
	up: 0,
	down: 0,
	action: 0
};

// Player position vars
hMove = 0;
vMove = 0;
hsp = 0;
vsp = 0;
spd = 1;

// Player punch vars
isBreaking = false; // avoid breaking multiple bricks in one punch
punchDistance = 10; // distance of the punch to hit a brick
hPunch = 0;
vPunch = 0;