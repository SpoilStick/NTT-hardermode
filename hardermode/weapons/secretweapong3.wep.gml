global.minigun = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAABoAAAAKCAYAAACqnE5VAAAAB3RJTUUH4QsbDwYPLL1+IgAAABd0RVh0U29mdHdhcmUAR0xEUE5HIHZlciAzLjRxhaThAAAACHRwTkdHTEQzAAAAAEqAKR8AAAAEZ0FNQQAAsY8L/GEFAAAABmJLR0QASABvAKgKRg8wAAAAtUlEQVR4nGNgYGD4jw3bpU5koCZmQDeUkMXEiuG0CKZQV9sMjqXE1f77hMWiWNg1bR4YExJDtxxugZ93LFYMMgBkGTINMxSXGDKGWwTzDcj1yL5B9pGRpR0cg/gwX+ITg2GYRUwMSODtmw8oGATsHBwZpGTlwRgEnj1+CMYggEsMGcMAikXYwKED+xm2rFoMxueOH0KRwyWGjOEAOeiwYfTUhB7JRKc6fEkan0aS8xG1MyYuDACNBEZUtL4RWwAAAABJRU5ErkJggg==",1,3,3)

#define weapon_name
	if (GameCont.area = "venuz"||GameCont.area = 103||GameCont.area = 107)
	return "Minigun";
	else
	return "Venuz Minigun";
#define weapon_type
	return 1;

#define weapon_cost
	return 1;

#define weapon_load
	return 1;

#define weapon_auto
	return 1;

#define weapon_area
	return -1;

#define weapon_swap
	return sndSwapMachinegun;

#define weapon_sprt
	return global.minigun;

#define weapon_text
	return "MORE GUN"; // Loading Tip
	
#define weapon_fire
	var g_ = gunangle + random_range(-10*accuracy,10*accuracy);
	var dist = 4;
	//wkick += 5
	sound_play(sndMinigun);	// Fire Sound
	weapon_post(5, 10, 10)
		
		while(
		place_free(x+lengthdir_x(dist, g_), y+lengthdir_y(dist, g_)))and !place_meeting(x+lengthdir_x(dist, g_), y+lengthdir_y(dist, g_),enemy)
			and !place_meeting(x+lengthdir_x(dist, g_), y+lengthdir_y(dist, g_),CustomHitme)
			and !place_meeting(x+lengthdir_x(dist, gunangle), y+lengthdir_y(dist, gunangle),CustomObject)
			and !place_meeting(x+lengthdir_x(dist, g_), y+lengthdir_y(dist, g_),prop) 
			and dist<(game_width*3){
			dist += 4;
			}
		with instance_create(x+lengthdir_x(dist, g_), y+lengthdir_y(dist, g_), Bullet1){
			motion_add(g_, 10); 
			image_angle = direction; //sprite angle
			image_alpha = 0
			hitid = [other.spr_idle, other.race_id];
			damage = (5 - round(dist/100))
			force = 1
			team = other.team;
			creator = other;
			//trace("damage:",damage)
			}
		with instance_create(x+lengthdir_x(dist/2, g_), y+lengthdir_y(dist/2, g_), Effect){
			name = "venuzpistoltrail"
			sprite_index = sprBoltTrail
			direction = g_
			image_angle = direction+90; //sprite angle
			creator = other;
			image_yscale = dist/2
			image_xscale = random_range(0.5,1.5)
			image_alpha = random_range(0,1)
			motion_add(direction,random_range(0,6))
			}
	with instance_create(x+lengthdir_x(4, g_), y+lengthdir_y(4, g_),EBulletHit){
	sprite_index = sprScrapBossMissileTrail 
	image_angle = g_+180
	image_speed = 1
	}
