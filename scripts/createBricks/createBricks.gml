// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createBricks(){
	var firstBrickPos = global.BRICK_SIZE + global.BRICK_HALF_SIZE;
	var lastBrickMaxX = room_width - global.BRICK_SIZE;
	var lastBrickMaxY = room_height - global.BRICK_SIZE;
	
	global.BRICK_MAX_DISTANCE = point_distance(global.ROOM_HALF_HEIGHT, global.ROOM_HALF_HEIGHT, firstBrickPos, firstBrickPos);
	global.COLOR_MAX_RATIO = 0.25 / global.BRICK_MAX_DISTANCE;
	global.COLOR_MIN_RATIO = 0.25;

	for (var brickX = firstBrickPos ; brickX < lastBrickMaxX ; brickX += global.BRICK_SIZE) {
		for (var brickY = firstBrickPos ; brickY < lastBrickMaxY ; brickY += global.BRICK_SIZE) {
			// Don't create brick if there is a safe block here
			if (!collision_point(brickX, brickY, o_safeBlock, false, true)) {
				//show_debug_message("NEW Brick here x=" + string(brickX) + ", y=" + string(brickY));
				instance_create_layer(brickX, brickY, global.BRICKS_LAYER_ID, o_brick);
			}
		}
	}
 }