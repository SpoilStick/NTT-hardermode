
#define weapon_name
	if (GameCont.area = "venuz"||GameCont.area = 103||GameCont.area = 107)
	return "Shotgun";
	else
	return "Venuz Shotgun";
#define weapon_type
	return 2;

#define weapon_cost
	return 1;

#define weapon_load
	return 12;

#define weapon_auto
	return 0;

#define weapon_area
	return -1;

#define weapon_swap
	return sndSwapShotgun;

#define weapon_sprt
	return sprMolesargeGun;

#define weapon_text
	return "screenshake"; // Loading Tip
	
#define weapon_fire
	var dir = -18 * other.accuracy
	sound_play(sndShotgun);	// Fire Sound
	weapon_post(5, 15, 10)
	motion_add(gunangle+180,2)
	repeat 6{
	
	var dist = 4;		
		while(place_free(x+lengthdir_x(dist, gunangle+dir), y+lengthdir_y(dist, gunangle+dir)))and !place_meeting(x+lengthdir_x(dist, gunangle+dir), y+lengthdir_y(dist, gunangle+dir),enemy)and !place_meeting(x+lengthdir_x(dist, gunangle+dir), y+lengthdir_y(dist, gunangle+dir),CustomHitme)and !place_meeting(x+lengthdir_x(dist, gunangle), y+lengthdir_y(dist, gunangle),CustomObject)and !place_meeting(x+lengthdir_x(dist, gunangle+dir), y+lengthdir_y(dist, gunangle+dir),prop)and dist<(game_width*3){
			dist += 4;
			}
		with instance_create(x+lengthdir_x(dist, gunangle+dir), y+lengthdir_y(dist, gunangle+dir), AllyBullet){
			motion_add(other.gunangle+dir, 10); 
			image_angle = direction; //sprite angle
			image_alpha = 0
			hitid = [other.spr_idle, other.race_id];
			if dist < 64
			damage = 8
			else if dist < 72
			damage = 6
			else if dist < 80
			damage = 4
			else if dist < 88
			damage = 2
			else
			damage = 1
			force = 1
			team = other.team;
			creator = other;
			}
		with instance_create(x+lengthdir_x(dist/2, gunangle+dir), y+lengthdir_y(dist/2, gunangle+dir), Effect){
			name = "venuzpistoltrail"
			sprite_index = sprBoltTrail
			direction = other.gunangle+dir
			image_angle = direction+90; //sprite angle
			creator = other;
			image_yscale *= dist/2
			image_xscale = random_range(0.5,1.5)
			image_alpha = random_range(0,1)
			motion_add(direction,random_range(0,4))
			}
	with instance_create(x+lengthdir_x(4+(dist*0), gunangle+dir), y+lengthdir_y(4+(dist*0), gunangle+dir),EBulletHit){
		sprite_index = sprScrapBossMissileTrail 
		image_angle = dir + other.gunangle+180
		image_speed = random_range(0.4,1.6)
		}
	dir += 6* other.accuracy
	}
