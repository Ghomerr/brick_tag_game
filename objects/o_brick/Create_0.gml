/// @desc Init vars

// Random color
//color = choose(COLOR.YELLOW, COLOR.BLUE, COLOR.GREEN, COLOR.RED);


// Compute corner of the current brick
var isOnYellowCorner = x > global.ROOM_HALF_WIDTH and y > global.ROOM_HALF_HEIGHT ? 1 : 0;
var isOnBlueCorner = x < global.ROOM_HALF_WIDTH and y < global.ROOM_HALF_HEIGHT ? 1 : 0;
var isOnGreenCorner = x < global.ROOM_HALF_WIDTH and y > global.ROOM_HALF_HEIGHT ? 1 : 0;
var isOnRedCorner = x > global.ROOM_HALF_WIDTH and y < global.ROOM_HALF_HEIGHT ? 1 : 0;

show_debug_message("corner ? y=" + string(isOnYellowCorner) + ", b=" + string(isOnBlueCorner) + " g=" + string(isOnGreenCorner) + " r=" + string(isOnRedCorner));

// Simple test
/*if (isOnYellowCorner) color = COLOR.YELLOW;
if (isOnBlueCorner) color = COLOR.BLUE;
if (isOnGreenCorner) color = COLOR.GREEN;
if (isOnRedCorner) color = COLOR.RED;//*/

var centerDistance = point_distance(global.ROOM_HALF_WIDTH, global.ROOM_HALF_HEIGHT, x, y);
var distanceRatio = global.COLOR_MIN_RATIO + global.COLOR_MAX_RATIO * centerDistance;
var otherDistanceRatio = (1 - distanceRatio) / 3;

var yellowRatio = round(irandom(100) * (isOnYellowCorner * distanceRatio + (isOnBlueCorner + isOnGreenCorner + isOnRedCorner) * otherDistanceRatio));
var blueRatio = round(irandom(100) * (isOnBlueCorner * distanceRatio + (isOnYellowCorner + isOnGreenCorner + isOnRedCorner) * otherDistanceRatio));
var greenRatio = round(irandom(100) * (isOnGreenCorner * distanceRatio + (isOnBlueCorner + isOnYellowCorner + isOnRedCorner) * otherDistanceRatio));
var redRatio = round(irandom(100) * (isOnRedCorner * distanceRatio + (isOnBlueCorner + isOnGreenCorner + isOnYellowCorner) * otherDistanceRatio));

var maxRatio = max(yellowRatio, blueRatio, greenRatio, redRatio);
show_debug_message("y=" + string(yellowRatio) + ", b=" + string(blueRatio) + " g=" + string(greenRatio) + " r=" + string(redRatio) + " max-> " + string(maxRatio));

if (maxRatio == yellowRatio) color = COLOR.YELLOW;
if (maxRatio == blueRatio) color = COLOR.BLUE;
if (maxRatio == greenRatio) color = COLOR.GREEN;
if (maxRatio == redRatio) color = COLOR.RED;

show_debug_message("Brick here x=" + string(x) + ", y=" + string(y) + " and I'm " + string(color));

image_index = color;