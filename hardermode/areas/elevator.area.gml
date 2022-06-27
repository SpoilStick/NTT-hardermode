global.nextarea = 1
global.spawnthing = 0
//{
global.tvhurt = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAVMAAABgCAYAAACg0pHDAAAAB3RJTUUH4QsHFQwVIE6hUwAAABd0RVh0U29mdHdhcmUAR0xEUE5HIHZlciAzLjRxhaThAAAACHRwTkdHTEQzAAAAAEqAKR8AAAAEZ0FNQQAAsY8L/GEFAAAABmJLR0QASABvAKgKRg8wAAADLklEQVR4nO3aQWpUURRF0cxCcAB2xK6TCGQGmf8wlBLSKZSEfOHVPqwNp//hcVejqKcnSZIkSZIkSZIk6X/2S/luz2hmh3caAl3v9pA/vv+06N6O8fR32MU3PA2BrucQ24NpfzAdySG2B9P+YDrS7SFfnl8tujdMT3+HXXzD0xDoereH/Prlm0X3hunp77CLb3gaAl3PIbYH0/5gOpJDbA+m/cF0JIfYHkz7g+lI94d4/M/L9u7ew/T099kn3vA0BLqeQ+wNpv3BdDCH2NtHMNXjBtPRYNobTNvBdDSY9gbTdjAdDaa9wbQdTEeDaW8wbQfT0WDaG0zbwXQ0mPYG03YwHQ2mvcG0HUxHg2lvMG0H09Fg2htM28F0NJj2BtN2MB0Npr3BtB1MR4NpbzBtB9PRYNobTNvBdDSY9gbTdjAdDaa9wbQdTEeDaW8wbQfT0WDaG0zbwXQ0mPYG03YwHQ2mvcG0HUxHg2lvMG0H09Fg2htM28F0NJj2BtN2MB0Npr3BtB1MR4NpbzBtB9PRYNobTNvBdDSY9gbTdjAdDaa9wbQdTEeDaW8wbQfT0WDaG0zbwXQ0mPYG03YwHQ2mvcG0HUxHc4itYNoPpqM5xFYw7QfT0RxiK5j2g+lo/zpOe9zBtB1MR4NpbzBtB9PRYNobTNvBdDSY9gbTdjAdDaa9wbQdTEeDaW8wbQfT0WDaG0zbwXQ0mPYG03YwHQ2mvcG0HUxHg2lvMG0H09Fg2htM28F0NJj2BtN2MB0Npr3BtB1MR4NpbzBtB9PRYNobTNvBdDSY9gbTdjAdDaa9wbQdTEeDaW8wbQfT0WDaG0zbwXQ0mPYG03YwHQ2mvcG0HUxHg2lvMG0H09Fg2htM28F0NJj2BtN2MB0Npr3BtB1MR4NpbzBtB9PRYNobTNvBdDSY9gbTdjAdDaa9wbQdTEeDaW8wbQfT0WDaG0zbwXQ0mPYG03YwHQ2mvX0EU3vswXQwh9gbTPuD6WD3D/vy/GoPvvcwPf199ok3PA2Brnd/iNba3zC11mA6kkNsD6b9wXQkh9geTPuD6Uinf4g3sz+TJEmSJEmSJEmSJEkP1W9UUr8VAmr2OAAAAABJRU5ErkJggg==",3,56.5,48)
global.tv1 = sprite_add_base64("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",1,56.5,48)
global.tv2 = sprite_add_base64("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",1,56.5,48)
//}
#define area_name
return "6-3";

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
if (lastarea != "elevator" && lastarea == "labs" && lastsubarea >= 2) {
    area = "elevator";
}

#define area_finish
if global.nextarea = 0{
	area = "HQ";
	subarea = 1;
	}
else if global.nextarea = 1{
	area = "palace";
	subarea = 1;
	}

#define area_setup
sound_play_music(mus6)
sound_play_ambient(amb6);
goal = 145;
background_color = make_color_rgb(9,28,32);
BackCont.shadcol = c_black;
TopCont.darkness = 1;
global.spawnthing = 0
#define area_start
global.nextarea = 1
with instance_create(0,0,CustomEnemy){
	name="portalblocker"
	canfly = 1
	}
with Floor if global.spawnthing == 0
if !collision_rectangle(x+16-96, y+16-96, x+16+96, y+16+128, Wall, 1, 1)
	{
	with instance_create(x+16,y+32,Effect){
		sprite_index = sprPopoPortal
		image_speed = 0.4
		image_yscale = -1
		depth = 1
		with instance_create(x,y-140,BigTV){
			my_health += 4000
			spr_tv1 = global.tv1
			spr_tv2 = global.tv2
			spr_idle = spr_tv1
			spr_hurt = global.tvhurt
			}
		mod_script_call("mod", "props", "elevator_create", x, y+1);
		mod_script_call("mod", "props", "terminal_create", x, y-96);
		instance_create(x-32,y-96,Server)
		instance_create(x+32,y-96,Server)
		mod_script_call("mod", "enemies", "enemyrogue_create", x, y - 78);
		instance_create(x-64,y+16,Server)
		instance_create(x-64,y-16,Server)
		instance_create(x+64,y+16,Server)
		instance_create(x+64,y-16,Server)
		if random(2)<1 mod_script_call("mod", "props", "bigtube1_create", x + 96, y + 32);
		else mod_script_call("mod", "props", "bigtube2_create", x + 96, y + 32);
		if random(2)<1 mod_script_call("mod", "props", "bigtube1_create", x - 96, y + 32);
		else mod_script_call("mod", "props", "bigtube2_create", x - 96, y + 32);
		mod_script_call("mod", "props", "bigtube1_create", x + 96, y     );
		if random(2)<1 mod_script_call("mod", "props", "bigtube1_create", x - 96, y     );
		else mod_script_call("mod", "props", "bigtube2_create", x - 96, y     );
		if random(2)<1 mod_script_call("mod", "props", "bigtube1_create", x + 96, y - 32);
		else mod_script_call("mod", "props", "bigtube2_create", x + 96, y - 32);
		if random(2)<1 mod_script_call("mod", "props", "bigtube1_create", x - 96, y - 32);
		else mod_script_call("mod", "props", "bigtube2_create", x - 96, y - 32);
		}
	global.spawnthing = 1
	}
with Floor if distance_to_object(Effect) > 96 and distance_to_object(hitme)>32 and distance_to_object(prop)>32{
	if (random(24) < 1) instance_create(x + 16, y + 16, Terminal);
	if (random(48) < 1) instance_create(x + 16, y + 16, MutantTube);
	if random(48) < 11{
		if random(2)<1 mod_script_call("mod", "props", "bigtube1_create", x + 16, y + 16);
		else mod_script_call("mod", "props", "bigtube2_create", x + 16, y + 16);
		}
	if (random(48) < 1) instance_create(x + 16, y + 16, Tube);
	}
with Wall if distance_to_object(Effect) > 96 and distance_to_point(10016,10016)>64 and distance_to_object(hitme)>32 and distance_to_object(prop)>32{
	if random(100) < 1{
		if random(2)<1 mod_script_call("mod", "props", "bigtube1_create", x + 8, y + 8);
		else mod_script_call("mod", "props", "bigtube2_create", x + 8, y + 8);
		
		with instance_create(x+8,y+8,PortalClear)
		 image_xscale = 0.5
		 image_yscale = 0.5
		}
	}
with Wall
		depth=(0)-(y/10016)
with instances_matching(CustomHitme,"name","bigtube1","bigtube2")
		depth=(0)-(y/10016)
with prop
	depth=(0)-(y/10016)
#define area_make_floor
with GenCont safespawn = 4
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

//if random(4) < 1
//	instance_create(x,y,FloorMaker)

if instance_number(Floor) > 60 and "build" not in self{
	var f_ = 0;
	instance_create(x,y,Floor);
		repeat(8){
			instance_create(x,y+f_,Floor);
			instance_create(x+32,y+f_,Floor);
			instance_create(x+64,y+f_,Floor);
			instance_create(x+96,y+f_,Floor);
			instance_create(x-32,y+f_,Floor);
			instance_create(x-64,y+f_,Floor);
			instance_create(x-96,y+f_,Floor);
			f_ -= 32;
			}
	build = 1
	}

	
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
if (random(24) < 1) instance_create(x + 16, y + 16, Necromancer);
if (random(24) < 1) instance_create(x + 16, y + 16, Grunt);


#define area_mapdata(lx, ly, lp, ls, ws, ll)
return [lx, 0];