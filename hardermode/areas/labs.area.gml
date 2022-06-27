#define area_name
return "6-"+string(GameCont.subarea);

#define area_sprite(q)
switch (q) {
    case sprFloor1: return sprFloor6;
    case sprFloor1B: return sprFloor6B;
    case sprFloor1Explo: return sprFloor6Explo;
    case sprWall1Trans: return sprWall6Trans;
    case sprWall1Bot: return sprWall6Bot;
    case sprWall1Out: return sprWall6Out;
    case sprWall1Top: return sprWall6Top;
    case sprDebris1: return sprDebris6;
	case sprDetail1: return sprDetail6;
}

#define area_transit
if (lastarea != "labs" && lastarea == "city" && lastsubarea == 5) {
    area = "labs";
	subarea = 1;
}

#define area_finish
if subarea == 1{
	area = "labs";
	subarea += 1;
	}
else if subarea >= 2{
	area = "elevator";
	subarea = 3;
	}

#define area_setup
sound_play_music(mus6)
sound_play_ambient(amb6);
goal = 145;
background_color = make_color_rgb(9,28,32);
BackCont.shadcol = c_black;
TopCont.darkness = 1;

#define area_start
 
	var _floor = instance_furthest(10016, 10016, Floor);
	with (instance_nearest(
		(_floor.x * 2 + 10016) / 3 + random_range(-60,60),
		(_floor.y * 2 + 10016) / 3 + random_range(-60,60), Floor)){
			instance_create(x + 16, y + 16, TechnoMancer)
			instance_create(x,y,PortalClear)
			}
	with enemy if distance_to_point(10016,10016)>160 and distance_to_object(TechnoMancer)>160{
		instance_create(x, y, TechnoMancer)
		instance_create(x,y,PortalClear)
		}
	with instances_matching_ne(chestprop,"object_index",IDPDChest){
		instance_create(x,y,IDPDChest)
		instance_change(Wind,0)
		instance_destroy()
		}
	with Wall if distance_to_point(10016,10016)>64 and distance_to_object(hitme)>32 and distance_to_object(prop)>32{
	if random(100) < 1{
		if random(2)<1 mod_script_call("mod", "props", "bigtube1_create", x + 8, y + 8);
		else mod_script_call("mod", "props", "bigtube2_create", x + 8, y + 8);
		
		with instance_create(x+8,y+8,PortalClear)
		 image_xscale = 0.5
		 image_yscale = 0.5
		}
	}
#define area_make_floor
var turn = choose(0,0,0,0,0,0,0,0,0,90,90,90,-90,180);
direction += turn;
if (turn == 180 && point_distance(x, y, 10016, 10016) > 48) {
    // turnarounds - weapon chests spawn in such
    instance_create(x, y, Floor);
    instance_create(x + 16, y + 16, WeaponChest);
	}
if abs(turn) = 90 and GameCont.area = 6 and random(2) < 1{
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x+32,y-32,Floor)
	instance_create(x-32,y-32,Floor)
	instance_create(x-32,y+32,Floor)
	if random(3) < 1{
		if random(4) < 3
		instance_create(x-16,y-16,Server)
		if random(4) < 3
		instance_create(x-16+64,y-16,Server)
		if random(4) < 3
		instance_create(x-16,y-16+64,Server)
		if random(4) < 3
		instance_create(x-16+64,y-16+64,Server)
		}
	}
else instance_create(x,y,Floor)

if random(20) < 1
	instance_create(x,y,FloorMaker)
		
if random(21 + instance_number(FloorMaker)) > 22 {
    // dead ends - ammo chests spawn in such
    if (point_distance(x, y, 10016, 10016) > 48) {
        with instance_create(x + 16, y + 16, AmmoChest)
			friction = 30
        instance_create(x, y, Floor);
		}
		instance_destroy();
		}


#define area_pop_enemies
if (random(11) < 1) repeat(12) instance_create(x + 16, y + 16, Freak);
if (random(11) < 1) instance_create(x + 16, y + 16, RhinoFreak);
if (random(11) < 1) instance_create(x + 16, y + 16, Necromancer);
if (random(11) < 1) instance_create(x + 16, y + 16, ExploFreak);

#define area_pop_props
if (random(24) < 1) instance_create(x + 16, y + 16, Server);
else if (random(48) < 1)	{
	if (random(2) < 1) mod_script_call("mod", "props", "bigtube_create", x + 16, y + 16);
	else if (random(2) < 1) mod_script_call("mod", "props", "bigtube2_create", x + 16, y + 16);
	instance_create(x + 16, y + 16, MutantTube);
	}
else if (random(48) < 1) instance_create(x + 16, y + 16, Tube);

#define area_mapdata(lx, ly, lp, ls, ws, ll)
if argument2 = "city"
return [lx+18, 0];
else 
return[lx, 0];