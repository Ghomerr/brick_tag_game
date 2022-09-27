// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createEnums(){
	enum KEY {
		UP,
		RIGHT,
		DOWN,
		LEFT,
		ACTION
	};
	
	enum DIRECTION {
		UP,
		RIGHT,
		DOWN,
		LEFT
	};
	
	enum COLOR {
		YELLOW = 1,
		BLUE = 2,
		GREEN = 3,
		RED = 4
	};
	
	enum PLAYER_STATE {
		IDLE,
		PUNCH,
		WALK
	};
}