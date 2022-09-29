// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doPunch(player){
	with(player) {
		if (!isBreaking) {
			// Compute the punch distance delta to add to find the brick to break
			switch (myDirection) {
				case DIRECTION.UP:
					hPunch = 0;
					vPunch = -punchDistance;
					break;
				case DIRECTION.RIGHT:
					hPunch = punchDistance;
					vPunch = 0
					break;
				case DIRECTION.LEFT:
					hPunch = -punchDistance;
					vPunch = 0; 
					break;
				case DIRECTION.DOWN:
					hPunch = 0;
					vPunch = punchDistance;
					break;			
			}
		
			// Search the brick to punch
			var brickToPunch = collision_point(x + hPunch, y + vPunch, o_brick, false, true);
			if (brickToPunch != noone) {
				isBreaking = true;
				instance_destroy(brickToPunch);
			}
		}
	}
}