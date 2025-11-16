// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_setting(){
	ini_open("settings.ini");
	//General Settings
	ini_write_string("Settings","Dialect",global.dialect)
	ini_write_real("Settings","Include Minus Card", global.minuscard)
	ini_write_real("Settings","Play Sounds", global.soundon)
	ini_write_real("Settings","Touch Mode", global.touchmode)
	
	//Default game options
	ini_write_string("Game Options","Game Mode", global.gamemode);
	ini_write_real("Game Options","Game Goal",global.gamegoal);
	ini_write_real("Game Options","Number of Players",global.num_of_players);
	ini_write_real("Game Options","Timer",global.gametimer);
	ini_write_real("Game Options", "Vs Computer", global.vscomp);


	//Related to goals
	ini_write_string("Goal", "Goal Mode", global.setgoal);
	ini_write_real("Goal","Points",global.pointgoal);
	ini_write_real("Goal", "Decks", global.deckgoal);
	
	
	ini_close();
}

function load_setting(){

	ini_open("settings.ini");
	
	//General Settings
	global.dialect = ini_read_string("Settings","Dialect",global.dialect)
	global.minuscard = ini_read_real("Settings","Include Minus Card", global.minuscard)
	global.soundon = ini_read_real("Settings","Play Sounds", global.soundon)
	global.touchmode = ini_read_real("Settings","Touch Mode", global.touchmode)	
	
	//Default game options
	global.gamemode = ini_read_string("Game Options","Game Mode", global.gamemode);
	global.gamegoal = ini_read_real("Game Options","Game Goal",global.gamegoal);
	global.num_of_players = ini_read_real("Game Options","Number of Players",global.num_of_players);
	global.gametimer = ini_read_real("Game Options","Timer",global.gametimer);
	global.vscomp = ini_read_real("Game Options", "Vs Computer", global.vscomp);


	//Related to goals
	global.setgoal = ini_read_string("Goal", "Goal Mode", global.setgoal);
	global.pointgoal = ini_read_real("Goal","Points",global.pointgoal);
	global.deckgoal = ini_read_real("Goal", "Decks", global.deckgoal);
	
	
	ini_close();

}