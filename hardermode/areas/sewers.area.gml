//{
global.sewersentrance = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAEAAAAAgCAYAAACinX6EAAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAADLElEQVRo3u2ZT2sTQRjGn9ImtGgRslYDMYcW0khLi1Qo9A8tkouCh15y8NCTF7+CfgB70A/QS08eeuilB9FTkdgaQTCXYDSGpIckkJpkIWyK0qTUQ5x1dnd2dvZP1kr7npZkhnee37wz8+zsQDKxeoYLHAOXADwGUD0sITI+8c8E2c1vANBWFADA1dFR9beZZ2kMLo8ZOp8e1JF9vuipAL/zWwIwSy46iLaiaMTYBdDv/NwlcOdNgZsYAD6/BsrfOrjZnLMlVCR4+ckYdl92AADD+aijpccFQNMnggFAfpFgts/LPwzl6yb0s396UMfg8pgG/smHGfX/VqP3u6s9gBUns2kAwPjXnvBP378w281PTvcNBCv0AOhoNepCICwBFIMprJzd1whfX0tq2nQlCQCwvbVpAOEWQjGYQvR2AHcf/hVNnj8+neH2FYHABdBWFMRDN1Tx62tJ5HM5xKemmABqhQLCsRi2tzY9gVA9LOHa9d4SWNjIqoIXNrJCAEQgCAEg4gEgn8sx214JhwEAt0IhAMCr3R3MT04bANg5FXgAeOXPA6DPrwFAmwgz8frZ11dCcX9fbWMGQcTE0OLdALCqAtMKoAGQcuaJ15wGf6qE9HWyDKwAiC4BxwAigRHN7JPZFAlWv2rnpyNH6AUA3olkC4B+9zcLuu1/D+DR4ycYajZNAXQlCUPNpq8Agks9AKJ7gC8VQI5C4ge8BhBcyqqCj6SMan/poPcMTyuAiCLPAAyz3m8AR1IGw/ko0qUy5h4AmbfsfosTUSYITwDcW+lZ4eNajesF3r3f8xRAq1HHr3jZVLQICNsAaAhEODE5VlGRZRzXauoxaFc8DaHVqCNdKjvqTyA4fh3W7wMVWbaEQJslp7NPewGn4mkIwlaYZVNZEEiwloIb8az8O3spVwCSiVV3b4ORwIjG3FRkGeFYjLkRktmnTZPT2T83APQQAKjegPYBXUkyvA67Fe8WgpV427fCehBmFyJeCXcKQkS4IwB6EIZNy0Q466a3HyDMhPPy+/JhxGsAXua3BHCeB+9FWN4I8ZxUvwfnR34hAGYJ/ALQz/yXH0cvOoDfgzCB/0yxIJUAAAAASUVORK5CYII=",2,0,0 )
global.sewagefloortop = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAACXBIWXMAAC4jAAAuIwF4pT92AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAAAiklEQVRYw+3RzwpAQBDH8dVSzspFuXgEB7XyAl5LeSxOysNs7V3ZODnInxJK+s555jefZpw8iSfx4XLKLAV4C1g1HsB/A+shWgFtp1cNsgiF7bSQRbgboFwj+jF4D9haf3PBs4XKNZcWLFlX5w4v+PkXAwQIECBAgAABAgQIECBAgAABAgQI8KmaAT8ncwP5SUumAAAAAElFTkSuQmCC",1,0,0 )
global.sewagefloor = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAACXBIWXMAAC4jAAAuIwF4pT92AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAAAOUlEQVRYw+3OMQ0AMAgAsGFjfhHNBSpIOFoFjazf77AQFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBTcMfQoZ8G5Onq2AAAAAElFTkSuQmCC",1,0,0 )
global.sewerfloorexplo = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAC4jAAAuIwF4pT92AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAAAGklEQVQ4y2MMdbb/z0ABYBw1YNSAUQOGiwEANrkdcbcKYOYAAAAASUVORK5CYII=",1,0,0 )
global.crabdead = sprite_add_base64("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",10,24,24)
//}
#define area_name
return "2-"+string(GameCont.subarea);

#define area_sprite(q)
switch (q) {
    case sprFloor1: return sprFloor2;
    case sprFloor1B: return sprFloor2B;
    case sprFloor1Explo: return sprFloor2Explo;
    case sprWall1Trans: return sprWall2Trans;
    case sprWall1Bot: return sprWall2Bot;
    case sprWall1Out: return sprWall2Out;
    case sprWall1Top: return sprWall2Top;
    case sprDebris1: return sprDebris2;
	case sprDetail1: return sprDetail2;
}

#define area_transit
if (lastarea != "sewers" && lastarea == "turtles") {
    area = "sewers";
}
if (lastarea != "sewers" && lastarea == "scorpionboss") {
    area = "sewers";
}

#define area_finish
//if subarea = 2
//area = "turtles";
//else 
if subarea < 3
subarea += 1;
else {
area = 3;
subarea = 1
sound_restore(sndOasisCrabAttack);
}

#define area_setup
goal = 145;
background_color = make_color_rgb(76, 89, 70);
BackCont.shadcol = c_black;
TopCont.fog = sprFog2;
TopCont.darkness = 1;
sound_play_music(mus2);
sound_play_ambient(amb2);

sound_assign(sndOasisCrabAttack,sndScorpionFireStart)
#define area_start
with Floor if random(7)<1
	with instance_create(x,y,TopDecalSewers)
		dir = choose(-1,1)  
with Wall if place_meeting(x+16,y,Floor) and place_meeting(x+48,y,Wall) and random(3)<1{
			with instance_create(x+16,y+2,Bones){
				sprite_index = sprSewerDecal
				image_xscale = 1
				}
			with instance_create(x+48,y+2,Bones){
				sprite_index = sprSewerDecal
				image_xscale = -1
				}
		}
if !mod_variable_exists("mod","platformer","gce"){
if GameCont.lastarea = "oasis"{
	with instances_matching_ne(Floor,"object_index",FloorExplo) if distance_to_point(10000,10000)<64
if (place_meeting(x+16+24,y+16,Wall)&& place_meeting(x+16-32,y+16,Floor))||place_meeting(x,y-32,CustomObject){
	instance_create(x+16,y+16,PortalClear)
	with instance_create(x,y,CustomObject){	
		sprite_index = global.sewagefloor
		//mask_index = mskFloor
		name = "sewagefloor"
		image_xscale = 0.8
		image_yscale = 0.8
		image_speed = 0
		depth = other.depth+1
		}
	name = "sewagefloor"
	styleb = 1
	sprite_index = mskNone
	traction = 2
	depth += 10
	image_alpha = 0
	}	
}	
		

with instances_matching_ne(Floor,"object_index",FloorExplo) if distance_to_point(10000,10000)>64 and random(100/GameCont.subarea)<1
if (place_meeting(x+16+24,y+16,Wall)&& place_meeting(x+16-32,y+16,Floor))||place_meeting(x,y-32,CustomObject){
	instance_create(x+16,y+16,PortalClear)
	with instance_create(x,y,CustomObject){	
		sprite_index = global.sewagefloor
		//mask_index = mskFloor
		name = "sewagefloor"
		image_xscale = 0.8
		image_yscale = 0.8
		image_speed = 0
		depth = other.depth+1
		}
	name = "sewagefloor"
	styleb = 1
	sprite_index = mskNone
	traction = 2
	depth += 10
	image_alpha = 0
	}
with instances_matching_ne(Floor,"object_index",FloorExplo) if distance_to_point(10000,10000)>64 and distance_to_object(CustomObject)<64
if (place_meeting(x+16+24,y+16,Wall)&& place_meeting(x+16-32,y+16,Floor))||place_meeting(x,y-32,CustomObject){
	instance_create(x+16,y+16,PortalClear)
	with instance_create(x,y,CustomObject){	
		sprite_index = global.sewagefloor
		//mask_index = mskFloor
		name = "sewagefloor"
		image_xscale = 0.8
		image_yscale = 0.8
		image_speed = 0
		depth = other.depth+1
		}
	name = "sewagefloor"
	styleb = 1
	sprite_index = mskNone
	traction = 2
	depth += 10
	image_alpha = 0
	}
}
if GameCont.lastarea != "oasis" and GameCont.lastsubarea == 5
	instance_create(10000,10000,Floor)

//		/gml mod_script_call("mod", "gatorboss", "gatorboss_create", mouse_x, mouse_y)
	
if GameCont.subarea==3
	with instance_furthest(10016, 10016, Floor){
		instance_create(x+16,y+16,PortalClear);
		mod_script_call("mod", "gatorboss", "gatorboss_create", x + 16, y + 16);
		repeat(5*(GameCont.loops+1))instance_create(x+16,y+16,Gator)
		}

with Rat if instance_nearest(x,y,Floor).traction = 2{
	if random(10)<1
		with instance_create(x + 16, y + 16, Crab){
			spr_dead = global.crabdead
			friction = 0.6
			}
	else
		instance_create(x,y,Exploder)
	instance_destroy()
	}
wait 10
with instances_matching(FloorExplo,"sprite_index",sprFloor2Explo)if distance_to_point(10000,10000)>48 sprite_index = global.sewerfloorexplo
with instances_matching(CustomObject,"name","sewagefloor") if !position_meeting(x+16,y+16-32,CustomObject) sprite_index = global.sewagefloortop
with instances_matching_ne(Floor,"name","sewagefloor")  depth = 10 - (y/10000)
with instances_matching(Floor,"styleb",1)
	depth -= 0.1
with Debris
	instance_delete(self)
var _floor = instance_furthest(10016, 10016, Floor);
if GameCont.subarea==2||GameCont.lastarea == "turtles"{
	var fll = instance_nearest(
		(_floor.x * 2 + 10016) / 3 + random(128) - 64,
		(_floor.y * 2 + 10016) / 3 + random(128) - 64, Floor);
	while fll.sprite_index != sprFloor2
		fll = instance_nearest(
		(_floor.x * 2 + 10016) / 3 + random(400) - 200,
		(_floor.y * 2 + 10016) / 3 + random(400) - 200, Floor);
	with fll{
		with instance_create(x,y,PizzaEntrance){
	//with instance_create(x,y,CustomObject){
	//	name = "pizzaentrance"
	//	sprite_index = global.sewersentrance
	//	image_index = 0
	//	image_speed = 0
	//	depth = 8
	//	}
		if GameCont.lastarea == "turtles"{
			with instance_create(10016,10016,CustomObject){
					name = "pizzaexit"
					sprite_index = global.sewersentrance
					image_index = 1
					image_speed = 0
					depth = other.depth
					}
				instance_destroy()
				}
			}
			}
		}
wait 1
with Dust
	instance_delete(self)


#define area_make_floor
instance_create(x, y, Floor);
if "big" in self and big == 1{
	instance_create(x+32, y, Floor);
	instance_create(x+32, y+32, Floor);
	instance_create(x, y+32, Floor);
	}
	
var turn = choose(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, -90, 180);
direction += turn;
if (turn == 180 && point_distance(x, y, 10016, 10016) > 48) {
    // turnarounds - weapon chests spawn in such
    instance_create(x, y, Floor);
    instance_create(x + 16, y + 16, WeaponChest);
}
if (random(19 + instance_number(FloorMaker)) > 22) {
    // dead ends - ammo chests spawn in such
    if (point_distance(x, y, 10016, 10016) > 48) {
        instance_create(x + 16, y + 16, AmmoChest);
        instance_create(x, y, Floor);
    }
    instance_destroy();
} else if (random(6) < 1) {
    // branching
   with instance_create(x, y, FloorMaker){
	//styleb = choose(0,0,0,0,1)
	big = choose(0,0,0,0,1)
	}
}
#define area_pop_enemies

if instance_nearest(x,y,Floor).styleb = 1 and (random(2) < 1){ 
	if random((18/GameCont.loops)-GameCont.subarea)<1 instance_create(x + 16, y + 16, BuffGator);
	else
	instance_create(x + 16, y + 16, Gator);
	}
if (random(24) < 1) instance_create(x + 16, y + 16, Ratking);
instance_create(x + 16, y + 16, Rat);
if (random(24) < 1) instance_create(x + 16, y + 16, ToxicBarrel);
if (random(16) < 1){ 
	if GameCont.loops > 0 instance_create(x + 16, y + 16, SuperFireBaller);
	else
	instance_create(x + 16, y + 16, FireBaller);
	}
#define area_pop_props

if instance_nearest(x,y,Floor).styleb = 0 and (random(18) < 1) instance_create(x + 16, y + 16, Pipe);
#define area_mapdata(lx, ly, lp, ls, ws, ll)
if argument2 = "scorpionboss"
return [lx+9, 0];
else if argument2 = "oasis"
return [lx+9, 0];
else
return [lx, 0];