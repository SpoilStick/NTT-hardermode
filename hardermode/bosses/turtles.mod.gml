//sprites {
global.turtlewalk = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAJAAAAAYCAYAAAAVpXQNAAAAB3RJTUUH4QITFQwwuSHXrQAAABd0RVh0U29mdHdhcmUAR0xEUE5HIHZlciAzLjRxhaThAAAACHRwTkdHTEQzAAAAAEqAKR8AAAAEZ0FNQQAAsY8L/GEFAAAABmJLR0QASABvAKgKRg8wAAADQElEQVR4nO2aMU6cQQyFt6JJlYIToEiRcgGqtIguKXKEXCQ3SJE6DYdJlTKnQSLxSkYvD9szHs/szw+LZLEL2ufx8zfj+RGHj1+/H6L49/UQRevzryFaHr1kn5qm/P7x6Rjy+urmzWN8+fbhGFWDVht/Cm306O3VxXSfVgJa1XRFxZDP7y4f7m7fH02RUDMkLIOq5s803msuRrWp4o16JN8Vnlk+rQR0lj8uPBIrjVkJqNfcmeaLLns006eVgM70x22uCPPC768Pj6FJ9H3GmJWAnrK56BM3wPLpOdQwW/uJuFJpAcSCGFmAVgIaNXcWQOhTawdnfVoJ6Gx/3KMNI0qSGQOnApRzrDgdeO2Yp+VTpgbuQcUnHl2WP9lNHAKkwvJahPiSpQnQsN4CRgAdaa7EDPOtHKypO5u9kve9TzesjxpVn9ifGXCa5CswCAgmwOPtz6+f/z1B9QKE2vKzCFD5XGa+syG8AWYApGtCLySP+KEQoVf4pNnjkaVfBRT94f6OTpkugFBEEuglWEIByowwC1A1hmew6PfA2WO+annm9+aQ9XMOPaklhwb6xPW5TzUdgGod+HuENtK2/LcOC88fXrubgE8cLBxN0mJbO9crwAOzAuhoc3vHsNaA68JxgHkwcF2tJqM2XiVQPwsor906HCxd9IcBDQ1SkLAYfATHXZ25HFoFMJhVQEea2wOQ5RHfJzCwCb1jxtNG/ZEaWFvXwgB52s0R5jVZj0hLWOmsNtkyXI3q1c40l/PgWkYB4h1tNaFaQ1THKKA9fXBPTC8JnxA8VviyOGoOHo0WpGpMBSAel94O683h7Wbr8ok1VQFq1ZGdAtnTLQUQL5Zv+jqbswB5gFqG41wfhcjKw6BmIeU6+LS2nlxmARrVUgFUwBnxJ0yCcDyZfXC5qwAUGd57sY1MsgBi/RF4onq8C+csQPnuWAXU8kenjd6BXZ3W4lvzdGTxlumsUznhosZaja4C1Mq3Qjfzt6tI19vEvYdD2bQZxlgLRIBGIeUc3kkxC6Ceup4ToAwQeo3/0hFqbAnQVk2IRvMeYpY3HowZ/c3N2Kv5LyWqfmxewDn2HZsv4Bz7js0XcI59x+YLOMe+4y+djt8FtRvIIgAAAABJRU5ErkJggg==",6,12,10)
global.turtlesintrobg = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAcQAAADyCAYAAADTC7UbAAAACXBIWXMAAC4jAAAuIwF4pT92AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAAd/ElEQVR42u3df4xW1ZnA8WegyZBClgYY1hURECkTSDWZ7FJdKq1t1WgQmW1008bapNtmu7uxaTa71aZZjTbZ1m63aSRt00SbKISmGMVliY26jQY7ujXZSVoDGSxUEKmWX7t2dQNbYPaP2fPyvOc9595z7j333vfH9/sXzDvvy8wL3M8898e5Q9PT00JERDToDQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIBIREQEiERERIKZ5oaGhjheanp4e4i0mIqK+B9GFoC+No34eaBIRUc+C6INw7OoNrV9PvrQn+PVAkYiIeg5EG8OxqzfIxUuXdXzeb44c9uJ4+/qVIiKybeIgIFL3/uew/q3z75QIEJ0bCTMNujDMwnHNrKNtj22bOMiGhroSwPFVI22P7/zVcQFIIkDs2GBoEDV4eblAZANDTU585uPjq0bkE5cvDHqtxw+cbAHJv1uiAQZRHyuM7e4/ni27Jl93gsjGhaqEcOUNc1sfO314WI5OnRIfhGs2joqIyL7dU14QzXNu/8kU/26JALEz18k05vPXzDoqm8YubQNx3/klbc9hw0JVQigicvDpd1u/9k2FeSCCIhEgZoKYd2bp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",1,246,0 )

global.turtlesintro = sprite_add_base64("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",1,246,0 )

global.turtlesintrofg = sprite_add_base64("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",1,246,0 )
//}
global.seenturtles = 0
#define game_start
global.seenturtles = 0
//{ turtles
#define turtle1_create(_x,_y)
with instance_create(_x,_y,CustomEnemy){
	on_step = script_ref_create(turtle_step)
	on_destroy = script_ref_create(turtle_dead)
	name = "turtle1"
	team = 1
	hitid = [sprTurtleIdle,"leonardo"]
	spr_idle = sprTurtleIdle
	spr_walk = global.turtlewalk
	spr_hurt = sprTurtleHurt
	spr_dead = sprTurtleDead
	snd_hurt = sndTurtleHurt
	snd_dead = sndTurtleDead2
	maxhealth = 40
	maxhealth += (maxhealth*2/3)*instance_number(Player)
	maxhealth *= GameCont.loops+1
	my_health = maxhealth
	direction = random(360)
	spr_shadow = shd24
	size = 1
	mask_index = mskRat
	canmelee = 1
	gunangle1 = 45
	gunangle2 = gunangle1+90 
	meleedamage = 1
	target = 0
	targetvisible = 0
	alrm3 = 0
	alrm1 = 0
	alrm2 = 0
	alrm0 = 0
	raddrop = 20
	return id;
	}
#define turtle2_create(_x,_y)
with instance_create(_x,_y,CustomEnemy){
	on_step = script_ref_create(turtle_step)
	on_destroy = script_ref_create(turtle_dead)
	name = "turtle2"
	team = 1
	hitid = [sprTurtleIdle,"Raphael"]
	spr_idle = sprTurtleIdle
	spr_walk = global.turtlewalk
	spr_hurt = sprTurtleHurt
	spr_dead = sprTurtleDead
	snd_hurt = sndTurtleHurt
	snd_dead = sndTurtleDead1
	maxhealth = 40
	maxhealth += (maxhealth*2/3)*instance_number(Player)
	maxhealth *= GameCont.loops+1
	my_health = maxhealth
	direction = random(360)
	spr_shadow = shd24
	size = 1
	mask_index = mskRat
	canmelee = 1
	gunangle1 = 45
	gunangle2 = gunangle1+90 
	meleedamage = 1
	target = 0
	targetvisible = 0
	alrm3 = 0
	alrm1 = 0
	alrm2 = 0
	alrm0 = 0
	raddrop = 20
	return id;
	}
#define turtle3_create(_x,_y)
with instance_create(_x,_y,CustomEnemy){
	on_step = script_ref_create(turtle_step)
	on_destroy = script_ref_create(turtle_dead)
	name = "turtle3"
	team = 1
	hitid = [sprTurtleIdle,"Michelangelo"]
	spr_idle = sprTurtleIdle
	spr_walk = global.turtlewalk
	spr_hurt = sprTurtleHurt
	spr_dead = sprTurtleDead
	snd_hurt = sndTurtleHurt
	snd_dead = sndTurtleDead3
	maxhealth = 40
	maxhealth += (maxhealth*2/3)*instance_number(Player)
	maxhealth *= GameCont.loops+1
	my_health = maxhealth
	direction = random(360)
	spr_shadow = shd24
	size = 1
	mask_index = mskRat
	canmelee = 1
	gunangle1 = 45
	gunangle2 = gunangle1+90 
	meleedamage = 1
	target = 0
	targetvisible = 0
	alrm3 = 0
	alrm1 = 0
	alrm2 = 0
	alrm0 = 0
	raddrop = 20
	return id;
	}
#define turtle4_create(_x,_y)
with instance_create(_x,_y,CustomEnemy){
	on_step = script_ref_create(turtle_step)
	on_destroy = script_ref_create(turtle_dead)
	name = "turtle4"
	team = 1
	hitid = [sprTurtleIdle,"Donatello"]
	spr_idle = sprTurtleIdle
	spr_walk = global.turtlewalk
	spr_hurt = sprTurtleHurt
	spr_dead = sprTurtleDead
	snd_hurt = sndTurtleHurt
	snd_dead = sndTurtleDead4
	maxhealth = 40
	maxhealth += (maxhealth*2/3)*instance_number(Player)
	maxhealth *= GameCont.loops+1
	my_health = maxhealth
	direction = random(360)
	spr_shadow = shd24
	size = 1
	mask_index = mskRat
	canmelee = 1
	gunangle1 = 45
	meleedamage = 1
	target = 0
	targetvisible = 0
	alrm3 = 0 //can swing
	alrm1 = 0 // swing
	alrm2 = 0 //spinning
	alrm0 = 0 //walk
	raddrop = 20
	return id;
	}
#define draw_wep_katana
if alrm1 != -1{
	if alrm2 <= 0{
		draw_sprite_ext(sprSword,0,x+lengthdir_x(14, gunangle1),y+lengthdir_y(14, gunangle1),1,1,gunangle1+180,c_white,1)
		draw_sprite_ext(sprSword,0,x+lengthdir_x(14, gunangle2),y+lengthdir_y(14, gunangle2),1,1,gunangle2+180,c_white,1)
		}
	draw_self()
	}
if alrm1 = -1{
	draw_self()
	if alrm2 <= 0{
		draw_sprite_ext(sprSword,0,x,y,1,1,gunangle1,c_white,1)
		draw_sprite_ext(sprSword,0,x,y,1,-1,gunangle2,c_white,1)
		}
	}

#define turtle_step
if name == "turtle1"
on_draw = script_ref_create(draw_wep_katana)
else if name == "turtle2"
on_draw = script_ref_create(draw_wep_dagger)
else if name == "turtle3"
on_draw = script_ref_create(draw_wep_chuck)
else if name == "turtle4"
on_draw = script_ref_create(draw_wep_stick)
	
if(nexthurt > current_frame){
		if(sprite_index != spr_hurt)
			image_index = 0
			sprite_index = spr_hurt
		if alrm3 <= 0{
			alrm1 = 1
			}
		}
	else{
		if(speed > friction)
			sprite_index = spr_walk
		else
			sprite_index = spr_idle
		}
		
if(instance_exists(Player))
	target = instance_nearest(x,y,Player)
else 
	target = 0		

if(instance_exists(target) && !collision_line(x,y,target.x,target.y,Wall,0,0))
	targetvisible = 1
else
	targetvisible = 0

if global.seenturtles == 0 and targetvisible == 1 and !instance_exists(Spiral){
	alrm2 = 100
	direction = point_direction(x,y,target.x,target.y)
	if mod_variable_exists("mod","options","intropan") and mod_variable_get("mod","options","intropan") == "1"{
		if UberCont.opt_bossintros == 1{
			mod_script_call("mod", "bossintros", "boss_trigger", "TURTLES",global.turtlesintrobg,global.turtlesintro,global.turtlesintrofg,self,60)
			}else
			mod_script_call("mod", "bossintros", "boss_trigger", "", mskNone,mskNone,mskNone,self,0)
		}else
		if UberCont.opt_bossintros == 1{
			mod_script_call("mod", "bossintros", "boss_trigger", "TURTLES",global.turtlesintrobg,global.turtlesintro,global.turtlesintrofg,instance_nearest(x,y,Player),0)
			}
	global.seenturtles = 1
	sound_play(sndTurtleMelee)
	}
	
if(target > 0){
	if(targetvisible) = 1{
		if(target.x > x)  {
			image_xscale = 1
			}
		else{
			image_xscale = -1
			}
		}
	}
if alrm0 > 0 if alrm2 == 0{
	alrm0 -= 1
	motion_add(direction, 0.8)
	}
if speed > 3{
	speed = 3
	}

if targetvisible == 0 && alrm2 == 0 && (random(10) < 1){
	direction = random(360)
	alrm0 = 20+random(5)
	}
if alrm2 <= 0 if random(300) < 1{
	alrm2 = 40
	sound_play_pitch(sndFishRollUpg,1.3);
	sound_loop(sndFishTB);
	}
if alrm2 > 0{
	alrm2 -= 1
	motion_set(direction,5)
	sprite_index = sprTurtleFire
	if collision_circle(x, y, 12, Wall, false, false){
		direction += 45
		}
	with instance_create(x,y,FishBoost){
		depth = 4
		evil = 1
		}
	}
if alrm2 == 1
	sound_stop(sndFishTB)
if alrm3 > 0 
	alrm3 -= 1

if alrm3 <= 0 && targetvisible = 1 && collision_circle(x, y, 50, target, false, false)
	alrm1 = 1
	
if alrm1 == 1{
	alrm1 = -1	
	alrm3 = 20
	alrm2 = 0
	alrm0 = 0
	if instance_exists(target)
		direction = point_direction(x,y,target.x,target.y)
	var d = direction
	var tx = x
	var ty = y
	if name = "turtle1"{
		sound_play(sndSwapSword)
		wait 10
		if instance_exists(self){
			motion_add(d,3)
			gunangle1 = gunangle1 - 255
			sound_play(sndBlackSword)
			with instance_create(x,y,EnemySlash){
				hitid = [sprTurtleIdle,"leonardo"]
				damage = 5
				team = 1
				image_angle = d
				motion_add(d,2)
				other.alrm0 = 20+random(5)
				wait(10)
				}
			}
		if instance_exists(self){
			motion_add(d,3)
			gunangle2 = gunangle2 - 225
			sound_play(sndBlackSword)
			with instance_create(x,y,EnemySlash){
				hitid = [sprTurtleIdle,"leonardo"]
				damage = 5
				team = 1
				image_angle = d
				motion_add(d,2)
				other.alrm0 = 20+random(5)
				wait(10)
				}
			}
		}
	else if name = "turtle2"{
		sound_play(sndSwapSword)
		wait 10
		if instance_exists(self){
			motion_add(d,3)
			gunangle1 = gunangle1 - 255
			sound_play(sndScrewdriver)
			with instance_create(x,y,Shank){
				hitid = [sprTurtleIdle,"Raphael"]
				damage = 4
				team = 1
				image_angle = d
				motion_add(d,2)
				other.alrm0 = 20+random(5)
				wait(10)
				}
			}
		if instance_exists(self){
			motion_add(d,3)
			gunangle2 = gunangle2 - 225
			sound_play(sndScrewdriver)
			with instance_create(x,y,Shank){
				hitid = [sprTurtleIdle,"Raphael"]
				damage = 4
				team = 1
				image_angle = d
				motion_add(d,2)
				other.alrm0 = 20+random(5)
				wait(10)
				}
			}
		}
	else if name = "turtle3"{
		sound_play(sndSwapHammer)
		wait 10
		if instance_exists(self){
			motion_add(d,3)
			gunangle1 = gunangle1 - 255
			sound_play(sndWrench)
			with instance_create(x,y,EnemySlash){
				hitid = [sprTurtleIdle,"Michelangelo"]
				damage = 5
				team = 1
				image_angle = d
				motion_add(d,2)
				other.alrm0 = 20+random(5)
				wait(10)
				}
			}
		if instance_exists(self){
			motion_add(d,3)
			gunangle2 = gunangle2 - 225
			sound_play(sndWrench)
			with instance_create(x,y,EnemySlash){
				hitid = [sprTurtleIdle,"Michelangelo"]
				damage = 5
				team = 1
				image_angle = d
				motion_add(d,2)
				other.alrm0 = 20+random(5)
				wait(10)
				}
			}
		}
	else if name = "turtle4"{
		sound_play(sndSwapHammer)
		wait 15
		if instance_exists(self){
			motion_add(d,3)
			gunangle1 = gunangle1 - 255
			sound_play(sndHammer)
			with instance_create(x,y,EnemySlash){
				hitid = [sprTurtleIdle,"Donatello"]
				damage = 6
				team = 1
				image_angle = d
				motion_add(d,2)
				other.alrm0 = 20+random(5)
				wait(15)
				}
			}
		}
	if instance_exists(self){
		sound_play(sndMeleeFlip)
		alrm1 = 0
		gunangle1 = 45
		gunangle2 = gunangle1+90 
		}
	}
#define draw_wep_dagger
if alrm1 != -1{
	if alrm2 <= 0{
		draw_sprite_ext(sprScrewDriver,0,x+lengthdir_x(14, gunangle1),y+lengthdir_y(14, gunangle1),1,1,gunangle1+180,c_white,1)
		draw_sprite_ext(sprScrewDriver,0,x+lengthdir_x(14, gunangle2),y+lengthdir_y(14, gunangle2),1,1,gunangle2+180,c_white,1)
		}
	draw_self()
	}
if alrm1 = -1{
	draw_self()
	if alrm2 <= 0{
		draw_sprite_ext(sprScrewDriver,0,x,y,1,1,gunangle1,c_white,1)
		draw_sprite_ext(sprScrewDriver,0,x,y,1,-1,gunangle2,c_white,1)
		}
	}


#define draw_wep_chuck
if alrm1 != -1{
	if alrm2 <= 0{
		draw_sprite_ext(sprWrench,0,x+lengthdir_x(14, gunangle1),y+lengthdir_y(14, gunangle1),1,1,gunangle1+180,c_white,1)
		draw_sprite_ext(sprWrench,0,x+lengthdir_x(14, gunangle2),y+lengthdir_y(14, gunangle2),1,1,gunangle2+180,c_white,1)
		}
	draw_self()
	}
if alrm1 = -1{
	draw_self()
	if alrm2 <= 0{
		draw_sprite_ext(sprWrench,0,x,y,1,1,gunangle1,c_white,1)
		draw_sprite_ext(sprWrench,0,x,y,1,-1,gunangle2,c_white,1)
		}
	}


#define draw_wep_stick
if alrm1 != -1{
	if alrm2 <= 0{
		draw_sprite_ext(sprHammer,0,x+lengthdir_x(14, gunangle1),y+lengthdir_y(14, gunangle1),1,1,gunangle1+180,c_white,1)
		}
	draw_self()
	}
if alrm1 = -1{
	draw_self()
	if alrm2 <= 0{
		draw_sprite_ext(sprHammer,0,x,y,1,1,gunangle1,c_white,1)
		}
	}
#define turtle_dead
sound_stop(sndFishTB)
if instance_number(CustomEnemy)<=1 and instance_exists(Player){
	sound_play(sndBossWin)
sound_play_music(musBossDead)
var xd_ = x;
var yd_ = y;
var fl_ = instance_nearest(xd_,yd_,Floor);
wait 14
if instance_exists(Player)
with fl_
if mod_variable_exists("mod","options","bossoutros") and mod_variable_get("mod","options","bossoutros") == "1"
mod_script_call("mod", "bossintros", "boss_trigger", "", mskNone,mskNone,mskNone,self,0)
	sound_stop(sndFishTB)
	}
