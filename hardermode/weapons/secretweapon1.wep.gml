global.trident = sprite_add_weapon_base64("iVBORw0KGgoAAAANSUhEUgAAACkAAAALCAYAAADiBKTLAAAACXBIWXMAAC4jAAAuIwF4pT92AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAAA40lEQVQ4y9WVPQrCQBBG34DkAoY0Fqa1t7AQIWDhGQTtvIGlpYVFbmBnIGewEARr+7RamMoTSGAsJLLxD0WS6DQLOzs7j292ZkVV+XWTsiBFJJNYVaVwyBTiUXIR0ci3qbYtnFb8EjB3yNpwzmExuvN9AgggQO71rnf67DchKXTQhWbPpjE+Po0x4QXQyLcB2C6PTE59ABLXywRVdmsS13u6muemVgjAYAVBl+ud6X6zd1HylTmtOFvu20ech5KJ6zGLR1fwFPYdNQvpblMEVZWfaRwT8NsOlzKH+buzUv7hxzkD0YOE7WWK0hQAAAAASUVORK5CYII=",15,5)
#define weapon_name
	return "trident";

#define weapon_type
	return 0;

#define weapon_cost
	return 0;

#define weapon_load
	return 25;

#define weapon_auto
	return 0;

#define weapon_area
	return -1;

#define weapon_swap
	return sndSwapHammer;

#define weapon_sprt
	return global.trident;

#define weapon_text
	return "ppopoioinintntytyy";
	
#define weapon_melee
	return 0;

#define weapon_fire
repeat 5{
	if instance_exists(self)
	if race_id!=7
		wkick += 2
	else{
		if wep = "secretweapon1"
			wkick +=2
		if bwep = "secretweapon1"
			bwkick +=2
		}
	}
wait 5
if instance_exists(self){
sound_play(sndWrench)
var ang = -10
repeat 3{
with instance_create((x+lengthdir_x((skill_get(13) * 20)+12, gunangle+ang)),(y+lengthdir_y((skill_get(13) * 20)+12, gunangle+ang)),Shank){
	motion_add(other.gunangle+(ang),(6 + (skill_get(13) * 3)))
	damage = 6
	team = other.team
	creator = other
	canfix = 0
	image_speed *= 0.8
	image_angle = direction
	}
	ang+=10
}
motion_add(gunangle,12)
wkick = -30
if race_id!=7
	wkick = -30
else{
	if wep = "secretweapon1"
		wkick = -30
	if bwep = "secretweapon1"
		bwkick = -30
	}
}