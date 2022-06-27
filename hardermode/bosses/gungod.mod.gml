// { Sprites
global.GunGod = sprite_add_base64(
"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",52,50,77)

// }
//{ da gun god
#define GunGod_create(_x, _y)

// mod_script_call("mod", "gungod", "GunGod_create", mouse_x, mouse_y)

with instance_create(_x, _y, CustomEnemy){
	name = "GunGod"
	spr_idle = global.GunGod
	mask_index = mskVan
	hitid = [sprMoneyPile,"DA GUN GOD"]
	spr_shadow = mskNone
	maxhealth = 20000
	my_health = 20000
	shd_y = 0
	friction = 0.1
	size = 1
	canfly = 1
	team = 1
	depth = -10
	right = 1
	spd = 0
	z = 0
	rot = 0
	wframes = 0
	gunangle = 270;
	zscale = 1;
	attacktype = 1;
	attackchange = 25;
	attackpause = 60;
	direction = 270;
	image_alpha = 0;
	image_xscale = 0.8
	image_yscale = 0.8
	on_draw = script_ref_create(GunGod_draw)
	on_step = script_ref_create(GunGod_step)
	on_hurt = script_ref_create(GunGod_hurt)
	on_destroy = script_ref_create(GunGod_dead)
	
	return id;
	}
#define GunGod_draw
	var i;
	var j = 0;
	var g = 0;
	
	d3d_set_fog(0, 0, 0, 0)
	j = 0
	g = 0
	//shadow
	var shad_scale;
	shad_scale = 1 - min(0.66 * (z / 96),0.66)
	draw_set_color(make_color_rgb(20,20,20));
	draw_set_alpha(0.4);
	draw_ellipse(x-2 + (12 * shad_scale), y + (8 * shad_scale)+shd_y, x-2 - (12 * shad_scale), y - (8 * shad_scale)+shd_y, 0);
	draw_set_color(c_white);
	draw_set_alpha(1);
	
	//for (i = 0; i <= 8; i++){ // outline
	//	repeat(zscale){draw_sprite_ext(global.VenuzCaroutline, clamp(i,0,7) , creator.x, creator.y - .5 *(i + j) - creator.z,image_xscale, image_yscale, image_angle, c_white, 1);
	//	j += 1;}}
	
	if wframes > 0
	d3d_set_fog(true,c_white,0,0)
	for (i = 0; i <= 52; i++){ //car
		repeat(zscale){draw_sprite_ext(global.GunGod, clamp(i,0,51) , x, y - .5 *(i + g) - z ,image_xscale, image_yscale, image_angle, c_white, 1);
		g += 1;}
	}
	draw_set_color(c_white);
	draw_set_alpha(random_range(0,0.5));
	draw_ellipse(x + random_range(59,61), y + 50-random_range(44,48)-z, x - random_range(59,61), y - 50-random_range(44,48)-z, 0);
	draw_set_color(c_white);
	draw_set_alpha(1);
	d3d_set_fog(0, 0, 0, 0)
	
#define GunGod_step
spr_idle = global.GunGod
sprite_index = spr_idle
if instance_exists(Player){
	var t, tx, ty, td;
	t = instance_nearest(x,y,Player)
	td = point_direction(x,y,t.x,t.y)
	
	if distance_to_point(215,166)>400
	direction = point_direction(x,y,t.x,t.y)
	else
	direction = point_direction(x,y,215,166) + (90*right)
	
	if attackpause > 0{
		if attackpause > 30
			direction = point_direction(x,y,t.x,t.y)+180
		else if distance_to_point(215,166)>200
			direction = point_direction(x,y,t.x,t.y)
		}
	gunangle = point_direction(x,y,t.x+t.hspeed,t.y+t.vspeed)
	speed = spd
	}
image_angle = gunangle+90
if random(100)<1{
	right*=-1
	spd *= -1
	}
if spd < 5 spd+=0.1
if wframes > 0 wframes--

if distance_to_point(10020,9400)<260
motion_add(point_direction(x,y,10020,9400)+180,0.2)
if distance_to_point(10020,9400)<120
motion_add(point_direction(x,y,10020,9400)+180,2)

if instance_exists(Player) and attackpause <= 0{
if attacktype = 1 and random(15)<1{
repeat choose(1,2,3,4){
	var a = choose(-90,90);
	with instance_create(x+hspeed+lengthdir_x(15,gunangle+a),y+vspeed+lengthdir_y(15,gunangle+a)-20,JockRocket){
		if instance_exists(Player){
		var t = instance_nearest(x,y,Player);
		direction = point_direction(x,y,t.x+lengthdir_x(t.hspeed,t.direction),t.y+lengthdir_y(t.vspeed,t.direction))
		}
		else 
			direction = other.gunangle
		hitid = other.hitid;
		image_angle = direction
		team = other.team
		creator = other
		speed = random_range(-6,2)
		if y>(other.y-20)
		depth = other.depth - 1
		}
	attackchange --;
	}
	}
else if attacktype = -1 repeat 2{
	var a = choose(-90,90);
	var gang_ = gunangle+random_range(-10,10);
	var _x = x+hspeed+lengthdir_x(15,gunangle+a)
	var _y = y+vspeed+lengthdir_y(15,gunangle+a)
	var dist = 4;
	if spd > 2
	spd = 0
			sound_play_pitchvol(sndMinigun,0.9,(game_width/4)/distance_to_object(Player));	// Fire Sound
				
				while(place_free(_x+lengthdir_x(dist, gang_), _y+lengthdir_y(dist, gang_)))and !place_meeting(_x+lengthdir_x(dist, gang_), _y+lengthdir_y(dist, gang_),Player)and !place_meeting(_x+lengthdir_x(dist, gang_), _y+lengthdir_y(dist, gang_),CustomHitme)and dist<(game_width*3){
					dist += 4;
					}
				with instance_create(_x+lengthdir_x(dist, gang_), _y+lengthdir_y(dist, gang_), Bullet1){
					motion_add(gang_, 10); 
					image_angle = direction; //sprite angle
					image_alpha = 0
					hitid = other.hitid;
					damage = 1
					force = 1
					team = other.team;
					creator = other;
					}
				with instance_create(_x+lengthdir_x(dist, gang_), _y+lengthdir_y(dist, gang_), Effect){
					name = "venuzpistoltrail"
					sprite_index = sprBoltTrail
					direction = gang_
					image_angle = direction+90; //sprite angle
					creator = other;
					image_yscale *= dist
					image_xscale = random_range(0.5,1.5)
					image_alpha = random_range(0,1)
					}
			with instance_create(_x+lengthdir_x(4, gang_), _y+lengthdir_y(4, gang_),EBulletHit){
				sprite_index = sprScrapBossMissileTrail 
				image_angle = gang_+180
				image_speed = 1
				}
		if random(10)<1 attackchange --;
	}
}
if attackchange <= 0{
	attackchange = 10;
	attacktype *= -1;
	attackpause = 60;
	}
if attackpause > 0 attackpause--
with projectile if distance_to_object(Player)>game_width*3 instance_delete(id)
#define GunGod_hurt(damage)
my_health -= damage
sound_play(snd_hurt)
wframes = 4
nexthurt = current_frame+12

if my_health <= 19000{
//trace("heli abandon")
var f_ = instance_nearest(x,y,Floor);
with instance_create(x,y,CustomObject){
	//name = "yungbullet"
	//trace("im coming")
	target = f_
	vspeed = -5
	friction = 0.4
	nokill = 30
	on_step = script_ref_create(yungbullet)
	}
my_health = 1111111

on_step= helicopterdown
}
#define GunGod_dead
	
#define yungbullet
//trace("spinning")
sprite_index = sprMutant6Idle
image_angle += 10
if nokill > 0 nokill--
if nokill > 10 vspeed -= 1
else
motion_add(point_direction(x,y,target.x+16,target.y+16),1)
if speed > 10 speed = 10
if place_meeting(x-16,y-16,target) and nokill<=0{
	mod_script_call("mod","enemies","enemyyv_create",target.x+16,target.y+16)
	sound_play(sndHitWall)
	//trace("gungod landed")
	instance_destroy()
	}
#define helicopterdown
spr_idle = global.GunGod
sprite_index = spr_idle
vspeed -= 1

image_angle += speed
if random(speed)<5
	instance_create(x+random_range(-20,20),y+random_range(-20,20),SmallExplosion)
instance_create(x+random_range(-10,10),y+random_range(-10,10),Smoke)
if instance_exists(Player) 
	target = instance_nearest(x,y,Player)
else 
	target = instance_nearest(x,y,Floor)
motion_add(point_direction(x,y,target.x,target.y)+180,3)
if distance_to_object(Floor)> game_width*2{//trace("heli crash"); 
instance_delete(id)}
//}
