//{
global.sewersentrance = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAEAAAAAgCAYAAACinX6EAAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAAETElEQVRo3u2ZTUhUURTH/8+0QmeK3nNKQqKaVNRloAspiCCbSGjTIqFVmxYuktm5jnZRixazkRZBs2gTFGlRBEWQUcuUqewLick388RGxdK8Leo8zrtz33v36aiRndXMm3vfOed3zzn33DuGEAIbWYz/ACoMoKe3W9y5ed9YL4ei6g8EEPSytXB0LfQvOwJ6ervdiWu54lxvJfSXASAF/KWqZ6sFIUg/iTMyppzb0dyOdzuWItnjC4C/hBvV09stDkxVKV92ZWjI0HEoamSRzhdvXgMAttcnlHOnCzYAwOxsBbc3SL8yBfxWgRwnQ1QroAIRNV9l/V3JPcLPaT+ZLthaEREYATSxP5US5HhHczta2to8cxYtC30DA66xfiCWk+POyBiiOq+CsKwIAAC+6mdPnUZudLQMwPnLl41rly6J/Nu3aGhqQnYwg0pAkJ2fLtihMOQx0wUbZmfrygCQ8+QsAFBUkNQ1NAAAGk0TAHDj9i0XAoHQrQc858kZWk1aDBmE3+9yKsj6PQAoV8lQMoLCPjc6iitDQ0Z/KiXkKKBUGH/61I0QgkBREAaA61etPncwqAbJgCgKQgHIEUAAno1/dusAOeMHgaKkP5USBE8GEBYFfgC21yfQYu5EzplUzmsxd2oB4Pp9GyEygkJfDukg4XlPRVE3CmjMz/GCMrfJST/JOZPKWrEpWa/cFiMBoM8AlMWQhMbylIlSDGUAE3YRcWPJk9cq4b+XRBUaE1YZAO1WmBudSaeFDICHO42RARCoqLsBBzBhFwEAczMlNO/bG5oCOWcSbz58RG0s/rso/4GwIgAUyioAfBuk79nBTFnqVBJAWApUBIAsXck94sy58+736mKxbAcIA6DbERIAcp4A1MbiaExYgSkwYRfdsSSNCQubkvXK4qvsBPkgWtnsYAZHDh8FAMzm80oDqBd4/OSRLwCdAggAHMDcTAkAUBuLo6EujvxsSTmXfuPjZQDKbVA+7Mh9ODlOTQ6FPc97LhOOg9l83u0heCuqigKVfgD49DyHuZkSxm0HAJBMmNi/a3dg9Lz/+sUzvjYWx9GWVtcGWb8HgN8Zmxwlx6j6qyDw3YFWP6gX9zvjA8DYw5euMwCwbesWJOJ1nmdckgkTdmkW3+a/e571HOzwrUFaAPgBh8IcAC5ev27woglA6XxY8+MH4MBUFa4OD3sAVNfUYMfWzUoAU/M/sLiw4AFw4fjxwBOhWwPC8pN2hf5USiQPHXILIe31mXRa0OrzpokD0IEgH8HvZh94xpnxWGAKOKUZz3cOQKsIhhlFAPoGBoxMOi0WLQvVxSIWLQvZwUzZvcBKbo1orgxBV8Kcj3wnyO8Fgg4juqse9X5AF8TJM8e09fsehoIm8SaJoES9i4t6G6wDgjvO55/oPCjujbzSvw/4m+7tdQumbrQpt8GNLMsCoNvRrdb/BZXUv2oA1uLPkXX9Z2hDp8C/JL8AB2PJ7j3noEkAAAAASUVORK5CYII=",2,16,16 )
//}
#define area_name
return "1-5";

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
if (lastarea != "scorpionboss" && lastarea == "nightdesert") {
    area = "scorpionboss";
}

#define area_finish
area = "sewersentrance";
subarea = 1;

#define area_setup
goal = 105;
background_color = make_color_rgb(175,143,106);
BackCont.shadcol = c_black;
TopCont.darkness = 0;
sprite_restore(sprFloor1);
sprite_restore(sprFloor1B);
sprite_restore(sprFloor1Explo);
sprite_restore(sprWall1Trans);
sprite_restore(sprWall1Bot);
sprite_restore(sprWall1Out);
sprite_restore(sprWall1Top);
sprite_restore(sprDebris1);
sprite_restore(sprDetail1);
sprite_restore(sprBones);
sprite_restore(sprDesertTopDecal);
sound_play_ambient(amb1);

#define area_start
with instance_create(0,0,CustomEnemy){
	name = "portalblocker"
	canfly = 1
	}
with RadChest{	
	instance_change(Wind,1)
	}
with Floor if random(7)<1
	with instance_create(x,y,TopDecalDesert)
		dir = choose(-1,1)
with Wall{ 
	if place_meeting(x+16,y,Floor)
		with instance_create(x+16,y,Bones){
			sprite_index = sprBones
			image_xscale = 1
			}
	else if place_meeting(x-16,y,Floor)
		with instance_create(x,y,Bones){
			sprite_index = sprBones
			image_xscale = -1
			}
	}
with instance_furthest(Player.x, Player.y, Floor){
	with instance_create(x,y,CustomObject){
		name = "sewersentrance"
		sprite_index = global.sewersentrance
		image_index = 0
		image_speed = 0
		depth = 6
		}	
	instance_create(x+16,y+16,PortalClear)
	mod_script_call("mod", "scorpionboss", "scorpionboss_create", x + 16, y + 16);
	
	}
with Floor
if !place_meeting(x,y,Player) and !place_meeting(x,y,enemy) and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and !place_meeting(x,y,prop){
if random(5) < 1 and !place_meeting(x,y,NOWALLSHEREPLEASE){
	var myx = x+choose(0,16);
	var myy = y+choose(0,16);
	
	with instance_create(myx,myy,Wall)
		instance_create(x,y,NOWALLSHEREPLEASE)
	}
}
#define area_make_floor
with GenCont safespawn = 5
styleb = 0
if !place_meeting(x,y,Floor) instance_create(x, y, Floor);
if !place_meeting(x+32,y,Floor) instance_create(x+32, y, Floor);
var turn = choose(0, 0, 0, 0, 0, 0, 0, 0,0,90,90,90, -90, -90, -90, 180);
direction += turn;
if (turn == 180 && point_distance(x, y, 10016, 10016) > 48) {
    // turnarounds - weapon chests spawn in such
    instance_create(x, y, Floor);
    instance_create(x + 16, y + 16, AmmoChest);
}
//if random(10)<1{ 
//	instance_create(x+32, y, Floor);
//	instance_create(x-32, y, Floor);
//	instance_create(x, y+32, Floor);
//	instance_create(x, y-32, Floor);
//	}
if (random(19 + instance_number(FloorMaker)) > 22) {
    // dead ends - ammo chests spawn in such
    if (point_distance(x, y, 10016, 10016) > 48) {
        instance_create(x, y, Floor);
		instance_create(x+32, y, Floor);
		instance_create(x-32, y, Floor);
		instance_create(x, y+32, Floor);
		instance_create(x, y-32, Floor);
    }
    instance_destroy();
} else if (random(4) < 1) {
    // branching
    with instance_create(x, y, FloorMaker){
		direction = other.direction + choose(90,-90)
		}
}

#define area_pop_enemies
//if (random(4) < 1) instance_create(x + 16, y + 16, Scorpion);
//if (random(16) < 1) instance_create(x + 16, y + 16, GoldScorpion);
//if (random(16) < 1) instance_create(x + 16, y + 16, Maggot);
//if (random(32) < 1) instance_create(x + 16, y + 16, MaggotSpawn);
//if (random(48) < 1) instance_create(x + 16, y + 16, BigMaggot);
//if (random(64) < 1) instance_create(x + 16, y + 16, JungleFly);

#define area_pop_props
if (random(16) < 1) instance_create(x + 16, y + 16, Cactus);
if (random(16) < 1) instance_create(x + 16, y + 16, BonePile);
if (random(10) < 1) with instance_create(x + 16, y + 16, Corpse){
	if random(4)<1{
		sprite_index=sprBigMaggotDead;
		image_xscale = choose(-1,1)
		}
	else{
		sprite_index=sprBanditDead;
		image_xscale = choose(-1,1)
		with instance_create(x,y,WepPickup){
			var weplist = ds_list_create();
			weapon_get_list(weplist, 0, 2);
			wep = (ds_list_find_value(weplist, irandom(ds_list_size(weplist) - 1)));
			ds_list_destroy(weplist);
			ammo = 1
			}
		}
	}

#define area_mapdata(lx, ly, lp, ls, ws, ll)
return [lx, 0];