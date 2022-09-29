// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateAnimation(player){
	with(player) {
		switch (state) {
			case PLAYER_STATE.IDLE:
				switch (myDirection) {
					case DIRECTION.UP:
						sprite_index = sp_idle_back;
						break;
					case DIRECTION.RIGHT:
						image_xscale = 1;
						sprite_index = sp_idle_right;
						break;
					case DIRECTION.DOWN:
						sprite_index = sp_idle_face;
						break;
					case DIRECTION.LEFT:
						image_xscale = -1;
						sprite_index = sp_idle_right;
						break;
				}
				break;
				
			case PLAYER_STATE.WALK:
				switch (myDirection) {
					case DIRECTION.UP:
						sprite_index = sp_walk_back;
						break;
					case DIRECTION.RIGHT:
					case DIRECTION.LEFT:
						sprite_index = sp_walk_right;
						break;
					case DIRECTION.DOWN:
						sprite_index = sp_walk_face;
						break;
				}
				// If character is moving to the right and its image_scale is to the left OR
				// if character is moving to the left and its image_scale is to the right
				if (hsp > 0 && image_xscale < 0 || hsp < 0 && image_xscale > 0) {
					image_xscale *= -1;
				}
			break;
			
			case PLAYER_STATE.PUNCH:
				switch (myDirection) {
					case DIRECTION.UP:
						sprite_index = sp_punch_back;
						break;
					case DIRECTION.RIGHT:
						image_xscale = 1;
						sprite_index = sp_punch_right;
						break;
					case DIRECTION.DOWN:
						sprite_index = sp_punch_face;
						break;
					case DIRECTION.LEFT:
						image_xscale = -1;
						sprite_index = sp_punch_right;
						break;
				}
				break;
		}
	}
}