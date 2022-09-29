/// @desc Display debug

draw_self();

if (global.DEBUG) {
	draw_set_color(c_red);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	
	if (state == PLAYER_STATE.PUNCH) {
		draw_circle(x + hPunch, y + vPunch, 3, false);
	}
}