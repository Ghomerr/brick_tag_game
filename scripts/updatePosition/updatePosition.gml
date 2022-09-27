// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updatePosition(player){
	with(player) {
		// Compute delta speed to apply
		hsp = hMove * spd;
		vsp = vMove * spd;
		if (hsp != 0 and vsp != 0) {
			hsp /= global.SQRT2;
			vsp /= global.SQRT2;
		}
		
		// Handle horizontal collision
		var collidedWall = instance_place(x + hsp, y, o_wall);
		if (collidedWall != noone) {

			while(!place_meeting(x + sign(hsp), y, collidedWall)) {
				x += sign(hsp);
			}
			hsp = 0; // block player from going through	
		}
		
		// Handle vertical collision
		collidedWall = instance_place(x, y + vsp, o_wall);
		if (collidedWall != noone) {
			while(!place_meeting(x, y + sign(vsp), collidedWall)) {
				y += sign(vsp);
			}
			vsp = 0; // block player from going through
		} 

		// Update character position and state
		x += hsp;
		y += vsp;
		if (hsp != 0 or vsp != 0) {
			state = PLAYER_STATE.WALK;	
		} else {
			state = PLAYER_STATE.IDLE;
		}
	}
}