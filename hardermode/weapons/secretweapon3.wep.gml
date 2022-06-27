#define init
	global.crystalrifle = sprite_add_weapon_base64("iVBORw0KGgoAAAANSUhEUgAAABwAAAAPCAYAAAD3T6+hAAAACXBIWXMAAC4jAAAuIwF4pT92AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAABhUlEQVQ4y72UP0vDQBjGn7M0YOnq5FyKkxRJqASk7SCdMunUTfAjWEU6dpB28is4Ozm1IkUQ6RGngluHfgZBLCTg65Bccpe72ILUd7nk7nh+7797GRHhP41lgYwxZYOI2MaBRy9fuHND7F2+Yzl0QURMduQvThiB2xevsL2aAg1O0jvW/WrhPKcYEWlptLw+CtUmAMD2ani6LaHYrQMAxh2O1n5GxdGFra4ZnADlCGSbzKJVQCaz+NsBio06YE+Bt8Po0J5Ga/wfPnMNrAJjT4uNuiYw7nC0zqMzEaWIWoH+AiYiZgQqUEkwHHBj+rJmcpg5PAWKZhlVoNSnHKS1/NhxAT+TSgDhKUv3DBYOeNJkGlBcEvUsB30AwKfVS5vDT1MZDrhWYyUDftTRcuMYn8WoIolkBGSAtfBg7TooVJuwvRquz0pag7XnhqYxAROYn/P2DiIYgCTty6GLrccrAMD38U3+s8iLUFh7nkkLYyQDASB46K01kVbOUqOXa9xZe7Rt2n4A6q/g4wNn+9wAAAAASUVORK5CYII=", 7, 8);

#define weapon_name
	return "CRYSTAL RIFLE"; // Name

#define weapon_type
	return 5; // Energy Wep

#define weapon_cost
	return 2;

#define weapon_load
	return 15; // 0.50 Seconds

#define weapon_area
	if (GameCont.area = 104 || GameCont.area = "icecave" || GameCont.area = "cavesinv")
	return 1;
	else return -1;

#define weapon_gold
	return 1
	
#define weapon_swap
	return sndSwapEnergy; // Swap sound

#define weapon_fire
	sound_play(sndLaserCannonCharge); // Sound

	 // Small Laser Cannon Charge:
	with instance_create(x,y,CustomObject){
		image_angle = other.gunangle;
		ammo = 3
		image_speed = 0
		image_index = 2
		image_xscale = 1
		sprite_index = sprLaserCharge
		hitid = [sprite_index, "LASER CHARGE"];
		team = other.team;
		creator = other;
		on_step = script_ref_create(crystallaser_step)
	}

#define weapon_sprt
	return global.crystalrifle; // Wep Sprite

#define weapon_text
	return "PEW PEW PEW"; // Loading Tip
	
#define step
if random(10)<1
instance_create(x,y,CaveSparkle)

#define crystallaser_step
if instance_exists(creator){
x=creator.x+lengthdir_x(16,creator.gunangle)
y=creator.y+lengthdir_y(16,creator.gunangle)-2
image_xscale += 0.6
image_yscale = image_xscale
if image_xscale >= 3{
	with creator{
		if(skill_get(17)) sound_play(sndLaserUpg);
			else sound_play(sndLaser);
		with instance_create(x,y,EnemyLaser){
			alarm0 = 1;
			image_angle = other.gunangle;
			hitid = [sprite_index, "LASER"];
			team = other.team;
			creator = other;
			damage = 2
			if skill_get(17)
				image_yscale = 2.2
			direction = image_angle
			}
		}
	if ammo > 1{
		ammo -= 1
		image_xscale = 0
		}
	else instance_destroy()
	}
}else instance_destroy()
	