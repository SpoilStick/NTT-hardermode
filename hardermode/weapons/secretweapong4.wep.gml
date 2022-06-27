global.rocket = sprite_add_weapon_base64("iVBORw0KGgoAAAANSUhEUgAAACIAAAAMCAYAAAAH4W+EAAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAAA1UlEQVQ4y2P8//8/w2AAjMgOYWRkRHHV////GQfMIX7esQwMDAwMZ86cZHj28hZNHAXzMLKZeB1iYmKO1VGUAj/vWIZNWxfjd4iuthkDAwMDw9s3H1AcYmJizlCYn8PAwMDA0D9xCtmOgJlFkkOERQRQ2FmphQwMDAwM02b3k+2Qy1dPMehqmzFcvnqKOIfANMDYUuJqDLWVjQwMDAwMze31ZDsEV7rD6xApcTUMzdgAIXXo8tgSPoZDcBmKK9egOx5dHSF5qpUjhPQQaybjoCxZBxIAABcRrOllW3MDAAAAAElFTkSuQmCC",16,5)

#define weapon_name
	if (GameCont.area = "venuz"||GameCont.area = 103||GameCont.area = 107)
	return "Rocket Launcher";
	else
	return "Venuz Rocket Launcher";
#define weapon_type
	return 4;

#define weapon_cost
	return 1;

#define weapon_load
	return 16;

#define weapon_auto
	return 0;

#define weapon_area
	return -1;

#define weapon_swap
	return sndSwapExplosive;

#define weapon_sprt
	return global.rocket;

#define weapon_text
	return "sturdy architecture"; // Loading Tip
	
#define weapon_fire
	motion_add(gunangle+180,5)
	sound_play(sndRocket);	// Fire Sound
	weapon_post(5, 20, 20)
		repeat 3
		with instance_create(x+lengthdir_x(4, gunangle), y+lengthdir_y(4, gunangle), Rocket){
			direction = other.gunangle
			image_angle = direction; //sprite angle
			hitid = [other.spr_idle, other.race_id];
			sprite_index = sprRocket
			team = other.team;
			creator = other;
		}
	repeat(12)
		with instance_create(x+lengthdir_x(16, gunangle+180), y+lengthdir_y(4, gunangle+180),Smoke)
			motion_add(other.gunangle+180,random(5))
