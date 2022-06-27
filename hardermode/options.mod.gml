//	chat options
// set to 0 to disable by defualt
global.intropan 		= "1"; //camera pans during boss intro
global.bossoutros 		= "1"; // boss
global.rads 			= "1"; //enemies absorb rads
global.weaponnames 	= "1"; //changed weapon names
global.coopchests 		= "1"; //ammo chests also spawns ammo for other players
global.portals			= "1"; //fancy portals, waits for all alive players in Co op
global.rogue			= "1"; //rouge finds rad canisters, post portal idpd can drop strike ammo
global.flames			= "1"; //recoded flames. lags more
basicload();

if global.weaponnames = "1"{
	weapon_set_name(81,"IDPD RIFLE")
	weapon_set_name(46, "SWORD")
	}else{
	weapon_set_name(81,"ROGUE RIFLE")
	weapon_set_name(46, "CHICKEN SWORD")
	}

#macro savefile "hardsave.txt"
	
#define game_start
basicsave();
	
#define basicload
	/// Load the file and split it into an array
	wait file_load(savefile);
	if file_exists(savefile){
		var _settings = string_load(savefile);
		_settings = string_split(_settings,"*");
		
		/// Apply settings. Only applying boss intros for the reason 
		//trace(_settings);
		global.intropan = _settings[0];
		global.bossoutros = _settings[1];
		global.rads = _settings[2];
		global.weaponnames = _settings[3];
		global.coopchests = _settings[4];
		global.portals = _settings[5];
		global.rogue = _settings[6];
		global.flames = _settings[7];
		
		//trace(global.bossportraits,global.intropan,global.bossoutros,global.rads,global.weaponnames,global.coopchests);
		file_unload(savefile);
	}else{
		// trace("FILE DOES NOT EXIST -- ASSUMED FRESH SAVE, USING DEFAULTS");
	}

#define basicsave
	/// Build string for new, better file
	var _str = "" + string(global.intropan) + "*" + string(global.bossoutros) + "*" + string(global.rads)+ "*" + string(global.weaponnames)+ "*" + string(global.coopchests)+ "*" + string(global.portals)+ "*" + string(global.rogue)+ "*" + string(global.flames);
	//trace(_str);
	
	/// Save to file
	string_save(_str,savefile);

	
//#define step
//	if button_pressed(0,"key1") basicload();
//	if button_pressed(0,"key2") basicsave();	
	
	
	
#define chat_command

	//intro pans
	 if(argument0 = "intropan"){
		if global.intropan = "1"{
			trace("intropan disabled");
			global.intropan = "0";
			}
		else if global.intropan = "0"{
			trace("intropan enabled");
			global.intropan = "1";
			}
		basicsave();
		var _str = "" + string(global.intropan) + "*" + string(global.bossoutros) + "*" + string(global.rads)+ "*" + string(global.weaponnames)+ "*" + string(global.coopchests)+ "*" + string(global.portals)+ "*" + string(global.rogue);
		trace(_str);	
        return true;
		}
	
	//boss outros
	 if(argument0 = "bossoutros"){
		if global.bossoutros = "1"{
			trace("bossoutros disabled");
			global.bossoutros = "0";
			}
		else if global.bossoutros = "0"{
			trace("bossoutros enabled");
			global.bossoutros = "1";
			}
		basicsave();
		var _str = "" + string(global.intropan) + "*" + string(global.bossoutros) + "*" + string(global.rads)+ "*" + string(global.weaponnames)+ "*" + string(global.coopchests)+ "*" + string(global.portals)+ "*" + string(global.rogue);
		trace(_str);		
		return true;
		}
	
	//enemies suck rads
	if(argument0 = "rads"){ 
		if global.rads = "1"{
			trace("enemies will not absorb rads");
			global.rads = "0";
			}
		else if global.rads = "0"{
			trace("enemies will absorb nearby rads (and drop them on death)");
			global.rads = "1";
			}
		basicsave();
		var _str = "" + string(global.intropan) + "*" + string(global.bossoutros) + "*" + string(global.rads)+ "*" + string(global.weaponnames)+ "*" + string(global.coopchests)+ "*" + string(global.portals)+ "*" + string(global.rogue);
		trace(_str);		
        return true;
		}
	
	//weapon names
	if(argument0 = "weaponnames"){
		if global.weaponnames = "1"{
			trace("mutant weapon names restored (ie: CHICKEN SWORD)");
			weapon_set_name(81,"ROGUE RIFLE")
			weapon_set_name(46, "CHICKEN SWORD")
			global.weaponnames = "0";
			}
		else if global.weaponnames = "0"{
			trace("some weapons are renamed (ie: CHICKEN SWORD is SWORD)");
			weapon_set_name(81,"IDPD RIFLE")
			weapon_set_name(46, "SWORD")
			global.weaponnames = "1";
			}
		trace(global.weaponnames)
		basicsave();
		var _str = "" + string(global.intropan) + "*" + string(global.bossoutros) + "*" + string(global.rads)+ "*" + string(global.weaponnames)+ "*" + string(global.coopchests)+ "*" + string(global.portals)+ "*" + string(global.rogue);
		trace(_str);		
		return true;
		}
	
	//co-op chests
	if(argument0 = "coopchests"){
		if global.coopchests = "1"{
			trace("ammo chests will only spawn ammo for one player");
			global.coopchests = "0";
			}
		else if global.coopchests = "0"{
			trace("ammo chests will spawn extra ammo for other players");
			global.coopchests = "1";
			}
		basicsave();
		var _str = "" + string(global.intropan) + "*" + string(global.bossoutros) + "*" + string(global.rads)+ "*" + string(global.weaponnames)+ "*" + string(global.coopchests)+ "*" + string(global.portals)+ "*" + string(global.rogue);
		trace(_str);		
        return true;
		}
		
	//portals
	if(argument0 = "portals"){
		if global.portals = "1"{
			trace("disable new portal effects");
			global.portals = "0";
			}
		else if global.portals = "0"{
			trace("fancy portals, waits for all alive players in Co op");
			global.portals = "1";
			}
		basicsave();
		var _str = "" + string(global.intropan) + "*" + string(global.bossoutros) + "*" + string(global.rads)+ "*" + string(global.weaponnames)+ "*" + string(global.coopchests)+ "*" + string(global.portals)+ "*" + string(global.rogue);
		trace(_str);		
        return true;
		}
	
	//rogue
	if(argument0 = "rogue"){
		if global.rogue = "1"{
			trace("rogue will find strike canisters, idpd will not drop strike ammo, less rads");
			global.rogue = "0";
			}
		else if global.rogue = "0"{
			trace("rogue will find rad canisters, idpd spawned after portal can drop strike ammo");
			global.rogue = "1";
			}
		basicsave();	
		var _str = "" + string(global.intropan) + "*" + string(global.bossoutros) + "*" + string(global.rads)+ "*" + string(global.weaponnames)+ "*" + string(global.coopchests)+ "*" + string(global.portals)+ "*" + string(global.rogue);
		trace(_str);	
        return true;
		}
	//flames
	if(argument0 = "flames"){
		if global.flames = "1"{
			trace("original nt flames");
			global.flames = "0";
			}
		else if global.flames = "0"{
			trace("recoded flames, can lag a bit with the dragon, there are a lot of projectiles");
			global.flames = "1";
			}
		basicsave();	
		var _str = "" + string(global.intropan) + "*" + string(global.bossoutros) + "*" + string(global.rads)+ "*" + string(global.weaponnames)+ "*" + string(global.coopchests)+ "*" + string(global.portals)+ "*" + string(global.rogue)+ "*" + string(global.flames);
		trace(_str);	
        return true;
		}
	
	if(argument0 = "options"){
        trace("options:"+global.intropan,global.bossoutros,global.rads,global.weaponnames,global.coopchests,global.portals,global.rogue,global.flames+"
		---this mod has a save file and will remember options---
		/intropan -freezes the game and pans to bosses
		/bossoutros -pauses and pans on boss death
		/rads -enemies absorb rads(drop when they are killed)
		/weaponnames -some weapons are renamed(chicken sword = sword)
		/coopchests -ammo for all players in co-op
		/portals -fancy portals, waits for all alive players in Co op
		/rogue -rogue will find rad canisters, idpd can drop strike ammo
		/flames -recoded flame projectiles, adds a afterburn and lets other damage sources hurt them");
        return true;
		}
