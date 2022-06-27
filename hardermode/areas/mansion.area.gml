#define area_name
return "$$$"

#define area_sprite(q)
switch (q) {
    case sprFloor1: return sprFloor103;
    case sprFloor1B: return sprFloor103;
    case sprFloor1Explo: return sprFloor103Explo;
    case sprWall1Trans: return sprWall103Trans;
    case sprWall1Bot: return sprWall103Bot;
    case sprWall1Out: return sprWall103Out;
    case sprWall1Top: return sprWall103Top;
    case sprDebris1: return sprDebris103;
//	case sprDebris1: return mskNone;
}

#define area_transit
//if (lastarea != "mansion" && lastarea == "venuz" and subarea > 2)
//    area = "mansion";

#define area_finish
	area = "junkyard";
	subarea = 5;
	with SpiralCont type = 4;
	with Spiral{ type = 3; sprite_index = mskNone}
#define area_setup
sound_play_music(mus103)
sound_play_ambient(amb103)
goal = 145;
background_color = make_color_rgb(238,240,242);
BackCont.shadcol = 1310738;
TopCont.darkness = 0;

#define area_make_floor
if round(instance_number(Floor)/12) = instance_number(Floor)/12 and instance_number(Floor) != 0{
x += lengthdir_x(32,direction)
y += lengthdir_y(32,direction)
instance_create(x+32,y,Floor)
instance_create(x+32,y+32,Floor)
instance_create(x,y+32,Floor)
instance_create(x,y-32,Floor)
instance_create(x-32,y,Floor)
instance_create(x+32,y-32,Floor)
instance_create(x-32,y-32,Floor)
instance_create(x-32,y+32,Floor)
} else instance_create(x,y,Floor)

var turn = choose(0,0,0,90,-90,180)
direction += turn;
if (turn == 180 && point_distance(x, y, 10016, 10016) > 48) {
    // turnarounds - weapon chests spawn in such
    instance_create(x, y, Floor);
    instance_create(x + 16, y + 16, WeaponChest);
}
if (random(31 + instance_number(FloorMaker)) > 32) {
    // dead ends - ammo chests spawn in such
    if (point_distance(x, y, 10016, 10016) > 48) {
        instance_create(x + 16, y + 16, AmmoChest);
        instance_create(x, y, Floor);
    }
    instance_destroy();
} else if (random(20) < 1) {
    // branching
    instance_create(x, y, FloorMaker);
}
#define area_start


#define area_pop_enemies
mod_script_call("mod", "enemies", "Molefish_create", x+16, y+16);
if (random(6) < 1) mod_script_call("mod", "enemies", "Molesarge_create", x+16, y+16);
if (random(11) < 1) instance_create(x + 16, y + 16, Jock);
if (random(6) < 1) instance_create(x + 16, y + 16, FireBaller);
if (random(11) < 1) instance_create(x + 16, y + 16, SuperFireBaller);
if (random(24) < 1) instance_create(x + 16, y + 16, GoldBarrel);

#define area_pop_props
if (random(14) < 1) instance_create(x + 16, y + 16, YVStatue)
if (random(8) < 1) instance_create(x + 16, y + 16, MoneyPile)


#define area_mapdata(lx, ly, lp, ls, ws, ll)
return [lx, 0];