
#define weapon_name
	if (GameCont.area = "venuz"||GameCont.area = 103||GameCont.area = 107)
	return "SMG";
	else
	return "Venuz SMG";
#define weapon_type
	return 1;

#define weapon_cost
	return 1;

#define weapon_load
	return 2;

#define weapon_auto
	return 1;

#define weapon_area
	return -1;

#define weapon_swap
	return sndSwapPistol;

#define weapon_sprt
	return sprSmg;

#define weapon_text
	return "accuracy"; // Loading Tip
	
#define weapon_fire
	var dist = 4;
	//wkick += 5
	sound_play(sndPistol);	// Fire Sound
	weapon_post(5, 10, 10)
		var g = gunangle + random_range(-20,20);
		while(place_free(x+lengthdir_x(dist, g), y+lengthdir_y(dist, g)))and !place_meeting(x+lengthdir_x(dist, g), y+lengthdir_y(dist, g),enemy)and !place_meeting(x+lengthdir_x(dist, g), y+lengthdir_y(dist, g),CustomHitme)and !place_meeting(x+lengthdir_x(dist, g), y+lengthdir_y(dist, g),CustomObject)and !place_meeting(x+lengthdir_x(dist, g), y+lengthdir_y(dist, g),prop) and dist<(game_width*3){
			dist += 4;
			}
		with instance_create(x+lengthdir_x(dist, g), y+lengthdir_y(dist, g), Bullet1){
			motion_add(g, 10); 
			image_angle = direction; //sprite angle
			image_alpha = 0
			hitid = [other.spr_idle, other.race_id];
			damage = (5 - round(dist/100))
			force = 1
			team = other.team;
			creator = other;
			//trace("damage:",damage)
			}
		with instance_create(x+lengthdir_x(dist/2, g), y+lengthdir_y(dist/2, g), Effect){
			name = "venuzpistoltrail"
			sprite_index = sprBoltTrail
			direction = g
			image_angle = direction+90; //sprite angle
			creator = other;
			image_yscale *= dist/2
			image_xscale = random_range(0.5,1.5)
			image_alpha = random_range(0,1)
			motion_add(direction,random_range(0,6))
			}
	with instance_create(x+lengthdir_x(4, g), y+lengthdir_y(4, g),EBulletHit){
	sprite_index = sprScrapBossMissileTrail 
	image_angle = g+180
	image_speed = 1
	}
#define step
	with instances_matching(Effect,"name","venuzpistoltrail"){
		if image_yscale > 0
			image_yscale *= 0.5
		else
			instance_destroy()
		}