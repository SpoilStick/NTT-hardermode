#define area_name
return "HQ"+string(GameCont.subarea);

#define area_sprite(q)
switch (q) {
    case sprFloor1: return sprFloor106;
    case sprFloor1B: return sprFloor106B;
    case sprFloor1Explo: return sprFloor106Explo;
    case sprWall1Trans: return sprWall106Trans;
    case sprWall1Bot: return sprWall106Bot;
    case sprWall1Out: return sprWall106Out;
    case sprWall1Top: return sprWall106Top;
    case sprDebris1: return sprDebris106;
}

#define area_transit
if (lastarea != "HQ" && lastarea == "idpd") {
    area = "HQ";
	hard = 22
	subarea = 1;
}

#define area_finish
if subarea < 4{
	area = "HQ";
	subarea += 1;
	}
else{
	area = 106;
	subarea = 3;
	}

#define area_setup
sound_play_music(mus106);
sound_play_ambient(amb106);
with Player if race = "rogue"
sound_play_music(mus106b);
with GenCont safespawn = 2
goal = 40+(GameCont.subarea*4);
background_color = make_color_rgb(245, 250, 251);
BackCont.shadcol = 9184256;

#define area_start
with Floor if random(7)<1
	with instance_create(x,y,TopPot)
		dir = choose(-1,1)

with Floor
if !place_meeting(x,y,Player) and !place_meeting(x,y,enemy) and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and !place_meeting(x,y,prop){
if random(12) < 1 and !place_meeting(x,y,NOWALLSHEREPLEASE){
	var myx = x+choose(0,16);
	var myy = y+choose(0,16);
	
	with instance_create(myx,myy,Wall)
		instance_create(x,y,NOWALLSHEREPLEASE)
	}
}

#define area_make_floor
var turn = choose(0,0,0,0,0,90);
var styb = choose(0,0,0,0,0,0,0,0,0,1)

if styb == 1{
	if styleb = 0
		styleb = 1
	else
		styleb = 0
	}

direction += turn;
if (abs(turn) == 90 && point_distance(x, y, 10016, 10016) > 48) {
    // turnarounds - weapon chests spawn in such
     instance_create(x, y, Floor);
		instance_create(x-32, y, Floor);
		instance_create(x-32, y-32, Floor);
		instance_create(x, y-32, Floor);
		instance_create(x+32, y, Floor);
		instance_create(x+32, y-32, Floor);
		instance_create(x+32, y+32, Floor);
		instance_create(x, y+32, Floor);
		instance_create(x-32, y+32, Floor);
    instance_create(x + 16, y + 16, WeaponChest);
}

else instance_create(x,y,Floor)

if random(6)<1 with instance_create(x,y,FloorMaker)
	direction = other.direction+choose(-90,90)

if (random(12 + instance_number(FloorMaker)) > 14) {
    // dead ends - ammo chests spawn in such
    if (point_distance(x, y, 10016, 10016) > 48) {
        instance_create(x + 16, y + 16, AmmoChest);
        instance_create(x, y, Floor);
		instance_create(x-32, y, Floor);
		instance_create(x-32, y-32, Floor);
		instance_create(x, y-32, Floor);
		instance_create(x+32, y, Floor);
		instance_create(x+32, y-32, Floor);
		instance_create(x+32, y+32, Floor);
		instance_create(x, y+32, Floor);
		instance_create(x-32, y+32, Floor);
    }
    instance_destroy();
	}


#define area_pop_enemies
if (random(3) < 1)instance_create(x + 16, y + 16, Grunt);
if (random(36) < 1) instance_create(x + 16, y + 16, Inspector);
if (random(36) < 1) instance_create(x + 16, y + 16, Shielder);
if (random(375/GameCont.subarea) < 1) instance_create(x + 16, y + 16, EliteGrunt);
if (random(375/GameCont.subarea) < 1) instance_create(x + 16, y + 16, EliteInspector);
if (random(375/GameCont.subarea) < 1) instance_create(x + 16, y + 16, EliteShielder);
#define area_pop_props

if (random(24) < 1) instance_create(x + 16, y + 16, PlantPot);

#define area_mapdata(lx, ly, lp, ls, ws, ll)
if argument2 = "elevator"
return [lx+9, 0];
else 
return[lx, 0];