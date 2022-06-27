#define area_name
return "3-"+string(GameCont.subarea);

#define area_sprite(q)
switch (q) {
    case sprFloor1: return sprFloor3;
    case sprFloor1B: return sprFloor3B;
    case sprFloor1Explo: return sprFloor3Explo;
    case sprWall1Trans: return sprWall3Trans;
    case sprWall1Bot: return sprWall3Bot;
    case sprWall1Out: return sprWall3Out;
    case sprWall1Top: return sprWall3Top;
    case sprDebris1: return sprDebris3;
	case sprDetail1: return sprDetail3;
}

#define area_transit
if (lastarea != "junkyard" && lastarea == "ravenboss") {
    area = "junkyard";
}

#define area_finish
if subarea == 5{
	 if Player.curse == 0 and Player.bcurse == 0
		area = "caves";
	else
		area = "cavesinv"
	subarea = 1;
	}
else subarea += 1
#define area_setup
sound_play_music(mus3b);
sound_play_ambient(amb3);
goal = 145;
background_color = make_color_rgb(138, 150, 158);
BackCont.shadcol = c_black;
TopCont.darkness = 0;

#define area_start
with Floor if random(2)<1
	with instance_create(x,y,TopDecalScrapyard)
		dir = choose(-1,1) 
with Wall if random(3)>1{ 
	if place_meeting(x+16,y,Floor)
		with instance_create(x+16,y,Bones){
			sprite_index = sprScrapDecal
			image_xscale = 1
			}
	else if place_meeting(x-16,y,Floor)
		with instance_create(x,y,Bones){
			sprite_index = sprScrapDecal
			image_xscale = -1
			}
	}
if GameCont.subarea == 4{
	with Floor
	if !place_meeting(x,y,Player) and !place_meeting(x,y,enemy) and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and !place_meeting(x,y,prop){
	if random(5) < 1 and !place_meeting(x,y,NOWALLSHEREPLEASE){
		var myx = x+choose(0,16);
		var myy = y+choose(0,16);
		
		with instance_create(myx,myy,Wall)
			instance_create(x,y,NOWALLSHEREPLEASE)
		if random(7) < 1 and point_distance(myx,myy,Player.x,Player.y) > 90
			instance_create(myx,myy,Trap)
		
		}
	}
}
else if GameCont.subarea == 5{
	var _floor = instance_furthest(10016, 10016, Floor);
    with (instance_nearest(
        (_floor.x * 2 + 10016) / 3 + random(128) - 64,
        (_floor.y * 2 + 10016) / 3 + random(128) - 64, Floor)) instance_create(x,y,BecomeScrapBoss)
	with Floor
	if !place_meeting(x,y,Player) and !place_meeting(x,y,enemy) and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and !place_meeting(x,y,prop){
	if random(20) < 1 and !place_meeting(x,y,NOWALLSHEREPLEASE){
		var myx = x+choose(0,16);
		var myy = y+choose(0,16);
		
		with instance_create(myx,myy,Wall)
			instance_create(x,y,NOWALLSHEREPLEASE)
		if random(7) < 1 and point_distance(myx,myy,Player.x,Player.y) > 64
			instance_create(myx,myy,Trap)
		
		}
	}
}
with instances_matching(Floor,"sprite_index",sprFloor3B)
	depth -= 1
#define area_make_floor
if GameCont.subarea == 4{
	if random(8) < 1
	{instance_create(x,y,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x+32,y-32,Floor)
	instance_create(x-32,y-32,Floor)
	instance_create(x-32,y+32,Floor)
	}else instance_create(x,y,Floor) 
	var turn = choose(0,0,0,0,90,-90);
	direction += turn;
	if (turn == 180 && point_distance(x, y, 10016, 10016) > 48) {
		// turnarounds - weapon chests spawn in such
		if !place_meeting(x,y,Floor) instance_create(x, y, Floor);
		instance_create(x + 16, y + 16, WeaponChest);
	}
	if (random(19 + instance_number(FloorMaker)) > 22) {
		// dead ends - ammo chests spawn in such
		if (point_distance(x, y, 10016, 10016) > 48) {
			instance_create(x + 16, y + 16, AmmoChest);
			if !place_meeting(x,y,Floor) instance_create(x, y, Floor);
		}
		instance_destroy();
	} else if (random(25) < 1) {
		// branching
		instance_create(x, y, FloorMaker);
	}
}
else if GameCont.subarea == 5{
	if !place_meeting(x,y,Floor) instance_create(x, y, Floor);
	var turn = choose(0, 0, 0, 0, 0, 0, 90, -90, 180, 180, 180, 90, -90, 180);
	direction += turn;
	if (turn == 180 && point_distance(x, y, 10016, 10016) > 48) {
		// turnarounds - weapon chests spawn in such
		if !place_meeting(x,y,Floor) instance_create(x, y, Floor);
		instance_create(x + 16, y + 16, WeaponChest);
	}
	if (random(19 + instance_number(FloorMaker)) > 22) {
		// dead ends - ammo chests spawn in such
		if (point_distance(x, y, 10016, 10016) > 48) {
			instance_create(x + 16, y + 16, AmmoChest);
			if !place_meeting(x,y,Floor) instance_create(x, y, Floor);
		}
		instance_destroy();
	} else if (random(2) < 1) {
		// branching
		instance_create(x, y, FloorMaker);
	}

}
#define area_pop_enemies
if (random(3) < 1) instance_create(x + 16, y + 16, SnowBot);
if (random(15) < 1) instance_create(x + 16, y + 16, Jock);
if (random(6) < 1) with instance_create(x + 16, y + 16, Sniper)
	if (random(5) < 1) instance_create(x, y, Salamander);
if (random(15) < 1) instance_create(x + 16, y + 16, Salamander);
if (random(3) < 1) instance_create(x + 16, y + 16, Car);
if (random(12) < 1) instance_create(x + 16, y + 16, Barrel);

#define area_pop_props
if (random(4) < 1) instance_create(x + 16, y + 16, Tires);


#define area_mapdata(lx, ly, lp, ls, ws, ll)
return [lx, 0];