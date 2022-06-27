#define area_name
return "7-"+string(GameCont.subarea);

#define area_sprite(q)
switch (q) {
   case sprFloor1: return sprFloor7;
   case sprFloor1B: return sprFloor7;
   case sprFloor1Explo: return sprFloor7Explo;
   case sprWall1Trans: return sprWall7Trans;
   case sprWall1Bot: return sprWall7Bot;
   case sprWall1Out: return sprWall7Out;
   case sprWall1Top: return sprWall7Top;
   case sprDebris1: return sprDebris7;
}

#define area_transit
if (lastarea != "palace" and lastarea == 106){
		area = "palace";
		loops -= 1;
		subarea = 4;
}

#define area_finish
//if GameCont.subarea < 5{
area = "palace";
subarea += 1;
//}

#define area_setup
sound_play_music(mus7)
sound_play_ambient(amb7);
if GameCont.subarea = 3
goal = 80
else
goal = 120;
background_color = make_color_rgb(97,29,36);
with BackCont
	shadcol = 786950;

#define area_make_floor
if GameCont.subarea = 3 and instance_number (Floor) <= 1{
	with instance_create(x, y, Floor){
			name = "statue"
			}
	direction = 0
	with instance_create(x,y,FloorMaker)
		direction = 90
	with instance_create(x,y,FloorMaker)
		direction = 180
	with instance_create(x,y,FloorMaker)
		direction = 270
	}
if random(3)<1{
if !place_meeting(x,y,Floor) instance_create(x, y, Floor);
if !place_meeting(x+32,y,Floor) instance_create(x+32, y, Floor);
if !place_meeting(x-32,y,Floor) instance_create(x-32, y, Floor);
if !place_meeting(x,y+32,Floor) instance_create(x, y+32, Floor);
if !place_meeting(x,y-32,Floor) instance_create(x, y-32, Floor);
}
else{
if !place_meeting(x,y,Floor) instance_create(x, y, Floor);
if !place_meeting(x-32,y,Floor) instance_create(x-32, y, Floor);
if !place_meeting(x,y+32,Floor) instance_create(x, y+32, Floor);
}
if GameCont.subarea = 3
var turn = 0
else
var turn = choose(0, 0, 0, 0, 0, 0, 90, -90, 180);
direction += turn;
if (turn == 180 && point_distance(x, y, 10016, 10016) > 48) {
    // turnarounds - weapon chests spawn in such
    instance_create(x, y, Floor);
    instance_create(x + 16, y + 16, WeaponChest);
}
if (random(19 + instance_number(FloorMaker)) > 22) and GameCont.subarea != 3 {
    // dead ends - ammo chests spawn in such
    if (point_distance(x, y, 10016, 10016) > 48) {
        instance_create(x + 16, y + 16, AmmoChest);
        instance_create(x, y, Floor);
    }
    instance_destroy();
} else if (random(12) < 1) {
    // branching
    instance_create(x, y, FloorMaker);
}

#define area_start
with Floor if random(7)<1
	with instance_create(x,y,TopDecalPalace)
		dir = choose(-1,1) 
with Wall if distance_to_point(10016,10016)>160 and random(16)<1{
	var fl_ = instance_nearest(x,y,Floor) 
	//with instance_create(x, y, PortalClear){
	//	image_xscale = 0.33
	//	image_yscale = 0.33
	//	}
	instance_create(fl_.x+16, fl_.y+16, SmallGenerator)
	}
if GameCont.subarea = 3{
	with instance_create(0,0,CustomEnemy){
		name = "portalblocker"
		canfly = 1
		}
	}
with instances_matching(Floor,"name","statue"){
	mod_script_call("mod", "guardianboss", "GuardianStatue_create", x+16, y+16)
	}	
#define area_pop_enemies
if GameCont.subarea <= 3 {
if random(24)<1 with instance_create(x + 16, y + 16, EnemyHorror)
if (random(30) < 1) instance_create(x + 16, y + 16, ExploGuardian);
}
if (random(30) < 1) instance_create(x + 16, y + 16, DogGuardian);

if (random(15) < 1) instance_create(x + 16, y + 16, Guardian);

#define area_pop_props
if (random(64) < 1) instance_create(x + 16, y + 16, Table);
if (random(14) < 1) instance_create(x + 16, y + 16, Pillar);

#define area_mapdata(lx, ly, lp, ls, ws, ll)
if argument2 = ("elevator"||106)
return [lx+18, 0];
else 
return[lx, 0];