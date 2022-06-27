#define area_name
return "1-?";

#define area_sprite(q)
switch (q) {
    case sprFloor1: return sprFloor1;
    case sprFloor1B: return sprFloor1B;
    case sprFloor1Explo: return sprFloor1Explo;
    case sprWall1Trans: return sprWall1Trans;
    case sprWall1Bot: return sprWall1Bot;
    case sprWall1Out: return sprWall1Out;
    case sprWall1Top: return sprWall1Top;
    case sprDebris1: return sprDebris1;
	case sprDetail1: return sprDetail1;
}

#define area_transit

    area = "banditcamp";

#define area_finish
area = "scorpionboss";
subarea = 1;

#define area_setup
goal = 60;
background_color = make_color_rgb(106, 122, 175);
BackCont.shadcol = c_black;
TopCont.fog = sprFog2;
TopCont.darkness = 1;
background_color = make_color_rgb(175, 143, 106);
sound_play_music(mus1b)
sound_play_ambient(amb0b);

#define area_start
with Floor if object_index != FloorExplo{
	sprite_index = sprFloor1B
	styleb = 1
	}
//with Wall if place_meeting(x+16,y,Floor) and place_meeting(x+48,y,Wall){
//		with instance_create(x+16,y,Bones){
//				sprite_index = sprScrapDecal
//				image_xscale = 1
//				}
//		with instance_create(x+48,y,Bones){
//				sprite_index = sprScrapDecal
//				image_xscale = -1
//				}
//		}
		
   var _floor = instance_furthest(10016, 10016, Floor);
    with (instance_nearest(
        (_floor.x * 2 + 10016) / 3 + random(128) - 64,
        (_floor.y * 2 + 10016) / 3 + random(128) - 64, Floor)){with instance_create(x + 16, y + 16, Campfire){
			depth = 0
			mask_index = mskNone
			spr_idle = sprCampfireOff
			spr_shadow = mskNone
			with instances_matching_ne(prop,"object_index","Campfire") if distance_to_object(Campfire)<16
				instance_delete(self)
			}
			instance_create(x,y,BanditBoss)
			repeat(random_range(9,18)+GameCont.loops*3) 
			mod_script_call("mod", "enemies", "enemyally_create", x+16, y+16);
			}

			
with Wall{	
	with instance_nearest(x,y,Floor) if distance_to_point(10016,10016)>72 and object_index != FloorExplo{
	if random(2)<1
		mod_script_call("mod", "enemies", "elitebanditsleep_create", x + random_range(8,24), y + random_range(8,24));
		
	}
	}
#define area_make_floor
styleb = 1
instance_create(x, y, Floor);
var turn = choose(0, 0, 0, 90, -90, 90, -90, 180);
direction += turn;
if (turn == 180 && point_distance(x, y, 10016, 10016) > 48) {
    // turnarounds - weapon chests spawn in such
    instance_create(x, y, Floor);
    instance_create(x + 16, y + 16, BigWeaponChest);
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
repeat random(15){
mod_script_call("mod", "enemies", "elitebanditsleep_create", x + random_range(8,24), y + random_range(8,24));
}
if (random(6) < 1) instance_create(x + 16, y + 16, Maggot);

if (random(9) < 1) instance_create(x + 16, y + 16, Barrel);

#define area_pop_props

#define area_mapdata(lx, ly, lp, ls, ws, ll)
return [lx, 0];