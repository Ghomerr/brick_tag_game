// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initRoom(){
	global.ROOM_HALF_WIDTH = room_width / 2;
	global.ROOM_HALF_HEIGHT = room_height / 2;
	//show_debug_message("Room half size w2=" + string(global.ROOM_HALF_WIDTH) + ", h2=" + string(global.ROOM_HALF_HEIGHT));
	
	global.BRICKS_LAYER_ID = layer_get_id("bricks");

	createBricks();
}