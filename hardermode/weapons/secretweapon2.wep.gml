global.gun = sprite_add_weapon_base64("iVBORw0KGgoAAAANSUhEUgAAACAAAAAYCAYAAACbU/80AAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAAAxUlEQVRIx+3UsQrCMBCA4f9WwakgVhA7CH0Ex76As5tP5+bsC3R0FoeCQ0WwUMgznFO1bbQtatEhGZNw9+VyiagqvxziAA7gAA7QBBARa1FVpTdAPWHke5XNcWY+Tlg/gAVYrtYAXC9nhumRYPRAHAZjACbTGQBesgfAhAsAgnn4MnF6SthtN82AchUi36skvwfKjTWf5qZzdVoBBaIAdA3+bm88rUD57uPMoKoiIvrtBuwM6KP7W3ugr2fnfkIHcIC/A9wAZWuS0bdQXlUAAAAASUVORK5CYII=",8,10)
global.harpoon = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAADAAAAAQCAYAAABQrvyxAAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAAAgklEQVRIx92WSwqAMAxE593/0OPCCDYKxYLaNMvQwLz8GmyrshEAlsTD2JGY1wBCEJJMEqlWKA43M1XgLCy05dYi8Xg2gCbj3bjZZuCmCuEBpTe/Zx+wvWvoVuAKMEcFDog0xK3whmwQAvCHW6g2QPkWWnOIC63R+h9Z6VNiiWOupG2yUnflJ5nTUAAAAABJRU5ErkJggg==",2,8,8)
global.harpoon2 = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAADAAAAAQCAYAAABQrvyxAAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAAAl0lEQVRIx92WQQ7DIAwEPf9/9PQQWgXn0AQ11ISjBWLW9hpQY+XFUwQYEVw8O3Lm1gq48UiCjB4UW5hiLfQBa2y5tUh6pKIHzhqCoibeV6FFINKev2cfUDeGrxU4CqhRgbeIZOIevFM2KAJw4hSaK0A93PNzE9/cQqNviY2LCib2QlLcMZ0z8cQx6si9j3rIlv5KLPuZewGLRH3liIo8hgAAAABJRU5ErkJggg==",2,8,7.5)

#define weapon_name
	return "Harpoon Gun";
#define weapon_type
	return 3;

#define weapon_cost
	return 1;

#define weapon_load
	return 50;

#define weapon_auto
	return 0;

#define weapon_area
if GameCont.area = ("oasis"||101)
	return 1;
else
	return -1;

#define weapon_swap
	return sndSwapBow;

#define weapon_sprt
	return global.gun;

#define weapon_text
	return ""; // Loading Tip
	
#define weapon_laser_sight
	return false;
	
#define weapon_fire
	//motion_add(gunangle+180,5)
	sound_play_pitch(sndHeavyCrossbow,0.5);	// Fire Sound
	weapon_post(10, 20, 20)
		with instance_create(x+lengthdir_x(10, gunangle), y+lengthdir_y(10, gunangle), HeavyBolt){
			name="harpoon"
			right = other.right
			direction = other.gunangle
			speed = 12
			damage = 50
			image_angle = direction; //sprite angle
			hitid = [other.spr_idle, other.race_id];
			sprite_index = global.harpoon
			team = other.team;
			creator = other;
		}

#define step
if object_index = Player{
	if wep = "secretweapon2" and reload < 2
		script_bind_draw(harpoon,self.depth+0.1,other)
	if bwep = "secretweapon2" and breload < 2{
		if race_id != 7
			script_bind_draw(harpoonb,self.depth+0.1,other)
		else 
			script_bind_draw(harpoons,self.depth+0.1,other)
		}
	}
with instances_matching(HeavyBolt,"name","harpoon"){
	if("scarf" not in self || !instance_exists(scarf)){
			scarf = instance_create(x,y,CustomObject);
			with(scarf){
				name = "Scarf";
				creator = other;
				last_scarf = other;
				length = 5;
			}
		}
	with BoltTrail if creator = other.creator
		instance_destroy()
	}


//string code from yokin

with instances_matching(CustomObject, "name", "Scarf"){
	if(length >= 0 && instance_exists(last_scarf)){
		if(last_scarf = creator){
			targetx = creator.x - lengthdir_x(12 / image_xscale, (90 - (creator.right * 90)) + (sin(current_frame / length) * 10));
			targety = creator.y - lengthdir_y(12 / image_yscale, (90 - (creator.right * 90)) + (sin(current_frame / length) * 10));
		}
		else if(instance_exists(creator)){
			targetx = last_scarf.x + lengthdir_x(creator.speed - 2, last_scarf.image_angle);
			targety = last_scarf.y + lengthdir_y(creator.speed - 2, last_scarf.image_angle);
		}

		image_angle = point_direction(x, y, last_scarf.x, last_scarf.y);
		image_xscale = 1 + point_distance(x, y, last_scarf.x, last_scarf.y);
		image_yscale = 0.5;

		if(last_scarf = creator){
			x = targetx;
			y = targety;
			motion_set(creator.direction, creator.speed);
		}
		else{
			if "targetx" in self
			motion_set(point_direction(x, y, targetx, targety), point_distance(x, y, targetx, targety) / 2);
		}


		with(creator){
			//other.image_blend = make_color_rgb(0,0,0);
			if(distance_to_object(Portal) <= 0) with(other) if(visible){
				if(instance_exists(last_scarf) && !last_scarf.visible) motion_set(point_direction(x, y, other.x, other.y), 4);
				if(distance_to_object(Portal) <= 0) visible = 0;
			}
		}

		sprite_index = sprBoltTrail;
		depth = -1;

		 // Grow:
		if(length > 0 && ("next_scarf" not in self || !instance_exists(next_scarf))){
			next_scarf = instance_create(x - lengthdir_x(1, last_scarf.image_angle), y - lengthdir_y(1, last_scarf.image_angle), CustomObject);
			with(next_scarf){
				name = "Scarf";
				last_scarf = other;
				creator = other.creator;
				length = other.length - 1;
			}
		}
	}

	 // Destroy Scarf:
	if(length < 0 || !instance_exists(last_scarf)){
		repeat(2) with instance_create(x,y,Feather){
			sprite_index = other.sprite_index;
			image_angle = other.image_angle;
			image_blend = other.image_blend;
			creator = other.creator;
		}
		instance_destroy();
	}
}
#define harpoon
with argument0{
	draw_sprite_ext(global.harpoon2,1,x+1*right+lengthdir_x(8,gunangle),y+lengthdir_y(8,gunangle),1,right,gunangle,c_white,1);
	}
instance_destroy()
#define harpoonb
with argument0{
	draw_sprite_ext(global.harpoon2,1,x+2*right+lengthdir_x(8,90+15*right),y+lengthdir_y(8,90+15*right),1,right*-1,90+15*right,c_silver,1)
	}
instance_destroy()
#define harpoons
with argument0{
	draw_sprite_ext(global.harpoon2,1,x+1*right+lengthdir_x(8,gunangle),y+lengthdir_y(8,gunangle)-4,1,right*-1,gunangle,c_white,1);
	}
instance_destroy()