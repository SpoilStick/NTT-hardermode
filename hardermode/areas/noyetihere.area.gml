#define area_name
return "???";

#define area_sprite(q)
switch (q) {
    case sprFloor1: return sprFloor5;
    case sprFloor1B: return sprFloor5;
    case sprFloor1Explo: return sprFloor5Explo;
    case sprWall1Trans: return sprWall5Trans;
    case sprWall1Bot: return sprWall5Bot;
    case sprWall1Out: return sprWall5Out;
    case sprWall1Top: return sprWall5Top;
    case sprDebris1: return sprDebris5;
	case sprDetail1: return sprDetail5;
}

#define area_transit
if (lastarea != "noyetihere" && lastarea == "yeti") {
    area = "noyetihere";
}

#define area_finish
area = "city";
subarea = lastsubarea;

#define area_setup
sound_play_music(-4)
sound_play_ambient(amb100);
goal = 18;
background_color = make_color_rgb(180, 189, 197);
BackCont.shadcol = c_black;
TopCont.darkness = 1;

#define area_start		
repeat 7
	instance_create(10016,10016,LightBeam)
var _floor = instance_furthest(10016, 10016, Floor);
with (instance_nearest(
      (_floor.x*2 + 10016) / 3 + random(128) - 64,
      (_floor.y*2 + 10016) / 3 + random(128) - 64, Floor)) 
	mod_script_call("mod", "enemies", "yeti_create", x+16, y+16)
//instance_create(_floor.x+16,_floor.y+16,BigWeaponChest)
mod_script_call("mod", "props", "leave_create", 10016, 10016);
with instance_create(0,0,CustomEnemy){
	name = "portalblocker"
	canfly = 1
	}

#define area_make_floor
with GenCont safespawn = 2
direction = choose(90,0,180,270)
instance_create(x, y, Floor);
instance_create(x+32, y, Floor);
instance_create(x-32, y, Floor);


#define area_pop_enemies
#define area_pop_props
if random(40)<1 instance_create(x+16,y+16,SodaMachine)
else if random(30)<1 instance_create(x+16,y+16,TV)
else if random(20)<1 instance_create(x+16,y+16,Server)
else if random(10)<1 instance_create(x+16,y+16,Tires)
else if random(10)<1 with instance_create(x+16,y+16,Table){
	spr_idle = sprFallenChair
	spr_hurt = sprFallenChairHurt
	spr_dead = sprFallenChairDead
	}
if random(10)<1 with instance_create(x,y,WepPickup){
			var weplist = ds_list_create();
			weapon_get_list(weplist, 6, GameCont.hard+3);
			wep = (ds_list_find_value(weplist, irandom(ds_list_size(weplist) - 1)));
			ds_list_destroy(weplist);
			ammo = 1
			}
#define area_mapdata(lx, ly, lp, ls, ws, ll)
return [lx-9, 0];