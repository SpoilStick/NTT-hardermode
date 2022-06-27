#define weapon_name
	return "Heavy IDPD rifle";

#define weapon_type
	return 1;

#define weapon_cost
	return 2;

#define weapon_load
	return 4;

#define weapon_auto
	return 1;

#define weapon_area
	return -1;

#define weapon_swap
	return sndSwapMachinegun;

#define weapon_sprt
	return sprPopoHeavyGun;

#define weapon_text
	return "more gun";
	
#define weapon_fire

repeat 2{
if instance_exists(self){
sound_play(sndRogueRifle)
with instance_create(x,y,Shell)
motion_add(other.gunangle+180+random(80)-40,3+random(2))

with instance_create(x,y,Bullet1)
{motion_add(other.gunangle+(random_range(-8,8))*other.accuracy,16)
image_angle = direction
team = other.team
sprite_index = sprIDPDBullet
spr_dead = sprIDPDBulletHit
}
motion_add(other.gunangle+180,0.6)

weapon_post(4, -6, 3);
wait 2
}
}