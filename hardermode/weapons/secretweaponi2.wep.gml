#define weapon_name
	return "IDPD SLUGGER";

#define weapon_type
	return 2; 

#define weapon_cost
	return 1;

#define weapon_load
	return 7;

#define weapon_auto
	return 1;

#define weapon_area
	return -1;

#define weapon_sprt
	return sprPopoSlugger;

#define weapon_text
	return "blue gun"; // Loading Tip
	
#define weapon_fire
		 // Sound:
	sound_play(sndSlugger);

	 // Kick, Shift, Shake:
	weapon_post(3, -10, 6);

	 // Slug:
	with instance_create(x,y,PopoSlug){
		motion_add(other.gunangle + (random_range(-8, 8) * other.accuracy), 18.5);
		image_angle = direction;
		sprite_index = sprPopoSlug
		hitid = [sprite_index, "SLUG"];
		team = other.team;
		creator = other;
		damage = 22
	}