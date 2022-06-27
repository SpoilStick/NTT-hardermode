#define area_name
return "1-4";

#define area_sprite(q)
switch (q) {
    case sprFloor1: return sprFloor0;
    case sprFloor1B: return sprFloor0;
    case sprFloor1Explo: return sprFloor0Explo;
    case sprWall1Trans: return sprWall0Trans;
    case sprWall1Bot: return sprWall0Bot;
    case sprWall1Out: return sprWall0Out;
    case sprWall1Top: return sprWall0Top;
    case sprDebris1: return sprDebris0;
	case sprDetail1: return sprDetail0;
}

#define area_transit
if (lastarea != "nightdesert" && lastarea == 1 && lastsubarea = 3) {
    area = "nightdesert";
}

#define area_finish
area = "scorpionboss";
subarea = 1;

#define area_setup
goal = 95;
background_color = make_color_rgb(106, 122, 175);
BackCont.shadcol = c_black;
TopCont.fog = sprFog2;
TopCont.darkness = 0;
sound_play_music(mus1b)
sound_play_ambient(amb0b);

#define area_start
	with Floor if random(7)<1
	with instance_create(x,y,TopDecalNightDesert)
		dir = choose(-1,1)
	with Wall if place_meeting(x+16,y,Floor) and place_meeting(x+48,y,Wall){
			with instance_create(x+16,y,Bones){
				sprite_index = sprNightBones
				image_xscale = 1
				}
			with instance_create(x+48,y,Bones){
				sprite_index = sprNightBones
				image_xscale = -1
				}
		}
		
   var _floor = instance_furthest(10016, 10016, Floor);
    with (instance_nearest(
        (_floor.x * 2 + 10016) / 3 + random(128) - 64,
        (_floor.y * 2 + 10016) / 3 + random(128) - 64, Floor)) with instance_create(x + 16, y + 16, Campfire){
			depth = 0
			mask_index = mskNone
			spr_idle = sprCampfireOff
			spr_shadow = mskNone
			with instances_matching_ne(prop,"object_index","Campfire") if distance_to_object(Campfire)<16
				instance_delete(self)
			}

#define area_make_floor
instance_create(x, y, Floor);
var turn = choose(0, 0, 0, 0, 0, 0, 0, 0, 0, 90, -90, 90, -90, 180);
direction += turn;
if (turn == 180 && point_distance(x, y, 10016, 10016) > 48) {
    // turnarounds - weapon chests spawn in such
    instance_create(x, y, Floor);
    instance_create(x + 16, y + 16, WeaponChest);
}
if random(10)<1{ 
	instance_create(x+32, y, Floor);
	instance_create(x-32, y, Floor);
	instance_create(x, y+32, Floor);
	instance_create(x, y-32, Floor);
	}
if (random(19 + instance_number(FloorMaker)) > 22) {
    // dead ends - ammo chests spawn in such
    if (point_distance(x, y, 10016, 10016) > 48) {
        instance_create(x + 16, y + 16, AmmoChest);
        instance_create(x, y, Floor);
    }
    instance_destroy();
} else if (random(2) < 1) {
    // branching
    instance_create(x, y, FloorMaker);
}

#define area_pop_enemies
var _a = GameCont.loops+1;
if (random(3) < _a * 2) mod_script_call("mod", "enemies", "elitebanditsleep_create", x + 16, y + 16);
if (random(6) < 1) instance_create(x + 16, y + 16, Scorpion);
if (random(12) < 1) instance_create(x + 16, y + 16, GoldScorpion);
if (random(3) < _a * 2) instance_create(x + 16, y + 16, Maggot);
if (random(3) < _a) instance_create(x + 16, y + 16, MaggotSpawn);
if (random(6) < 1) instance_create(x + 16, y + 16, BigMaggot);
if (random(9) < _a) instance_create(x + 16, y + 16, JungleFly);

#define area_pop_props
if (random(4) < 1) instance_create(x + 16, y + 16, NightCactus);
if (random(16) < 1) instance_create(x + 16, y + 16, BonePile);

#define area_mapdata(lx, ly, lp, ls, ws, ll)
return [lx, 0];