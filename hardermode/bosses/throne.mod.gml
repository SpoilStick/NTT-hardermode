//#define step
//with Player
//if button_pressed(index,"horn")
//throne_create(mouse_x,mouse_y)
#define throne_create(_x,_y)
with instance_create(_x,_y,CustomEnemy)
{
	hitid = [sprNothing2Idle,"THRONE"]
	maxhealth = 1250
	maxhealth += (750*(GameCont.loops+1))
	maxhealth += (750*instance_number(Player))
	my_health = maxhealth
	spr_idle = sprNothing2Idle
	snd_hurt = sndNothing2Hurt
	mask_index = mskNothing2
	sound_play_music(musBoss4B)
	with Wall
	{
		if place_meeting(x,y,Floor)
		instance_destroy()
		else
		instance_change(InvisiWall,true)
	}
	with TopSmall
	instance_destroy()
	with Bones
	instance_destroy()
	visible = 1
	image_speed = 0.4
	wframes = 0
	canfly = 1
	meleedamage = 10
	on_step = script_ref_create(Throne2Step)
	on_destroy = script_ref_create(Throne2Destroy)
	on_hurt = script_ref_create(Throne2Hit)
	on_draw = script_ref_create(Throne2Draw)
	alrm0 = 1
	alrm1 = 15+irandom(15)
	intro = 0
	speed = 5
	friction = 0
	halfsnd = 0
	dir = 0
	rot = 1
	with enemy
	if spr_idle != sprNothing2Idle
	instance_delete(self)
	with prop
	instance_delete(self)
	size = 5
	move_alarm()
	ammo = 0
	firing = 0
	//draws the floors, remove this if you have your own shit in mind
	//script_bind_draw(Throne2Platform,15)
}
#define Throne2Step

//if intro == 0{	
//if mod_variable_exists("mod","options","intropan")
//		if mod_variable_get("mod","options","intropan") == "1"{
//				mod_script_call("mod", "bossintros", "boss_trigger", "", mskNone,mskNone,mskNone,self,0)
//			}
//		
//intro = 1	
//}


//die
if my_health < 0
instance_destroy()

//be white when hurt
if wframes > 0
wframes -= 1

//be visisble
sprite_index = spr_idle

//dont change this back
/*target = instance_nearest(x,y,Player)
if point_distance(x,y,target.x,target.y) > 300
move_alarm()*/

//ALARMS N SHIT
if alrm0 > -1
alrm0 -= 1
if alrm0 = 0
move_alarm()
if alrm1 > -1
alrm1 -= 1
if alrm1 = 0
attack_alarm()


//make a sound at half health
if my_health <= maxhealth/2 and halfsnd = 0
{
	sound_play(sndNothing2HalfHP)
	halfsnd = 1
}

//movement shit
speed = 5
if firing = 1
speed = 2
if "dir" not in self
dir = 0
dir += 2*rot
if dir > 360
dir = 0
if dir < 0
dir = 360
#define Throne2Destroy
sound_play(sndNothing2DeadStart)
sound_play(sndBossWin)
sound_play_music(musBossDead)
instance_create(x,y,Nothing2Death)

#define Throne2Hit(damage)
my_health -= damage
sound_play(snd_hurt)
wframes = 4
nexthurt = current_frame+12

#define Throne2Draw
if wframes > 0
d3d_set_fog(true,c_white,0,0)
draw_sprite(sprite_index,image_index,x,y)
d3d_set_fog(false,c_white,0,0)
draw_set_color(c_black)
with Throne2Ball
draw_text(x,y,string(timeout))
draw_set_color(c_white)
//uncomment to see the way throne II wants to move
//with Player
//draw_line(x,y,x+lengthdir_x(156,other.dir),y+lengthdir_y(156,other.dir))

#define move_alarm
if instance_exists(Player){
var t, tx, ty, td;
t = Player
td = point_direction(x,y,t.x,t.y)
direction = td + 45
//td = dir
//tx = t.x+lengthdir_x(156+irandom(32),td)
//ty = t.y+lengthdir_y(156+irandom(32),td)
//direction = point_direction(x,y,tx,ty)
alrm0 = 25+irandom(15)
if random(300)<1 rot *= -1
}
#define attack_alarm
if instance_exists(Player){
if ammo = 0
atk = choose(0,1,2)
//0 = laser balls, 1 = bootleg big dog, 2 = big guardian balls
if atk = 0
{
	repeat(4+GameCont.loops)
	{
		target = instance_nearest(x,y,Player)
		gunangle = point_direction(x,y,target.x,target.y)
		with instance_create(x,y,Throne2Ball)
		{
			team = other.team
			motion_add(other.gunangle-80+irandom(160),6+irandom(4))
		}
	}
	sound_play(sndNothing2Ball)
	alrm1 = 80+irandom(30)
}
if atk = 1
{
	sound_play(sndUltraLaser)
	repeat(15+15*GameCont.loops)
	{
		for(var i = 0;i<10;i++)
		{
			with instance_create(x,y,GuardianBullet)
			{
				motion_add(i*(360/10),6)
				team = other.team
			}
		}
		firing = 1
		wait(1)
	}
	firing = 0
	alrm1 = 80+irandom(30)
}
if atk = 2
{
	repeat(2+GameCont.loops)
	if instance_exists(Player)
	{
		target = instance_nearest(x,y,Player)
		gunangle = point_direction(x,y,target.x,target.y)
		with instance_create(x,y,BigGuardianBullet)
		{
			team = other.team
			motion_add(other.gunangle-80+irandom(160),4+irandom(3))
			sound_play(sndBigBallFire)
		}
		wait(8)
	}
	if instance_exists(self)
	alrm1 = 80+irandom(30)
}
}
#define Throne2Platform
with Floor
{
	if object_index != FloorExplo
	{
		draw_sprite(sprBackFloor2,image_index,x,y)
		draw_sprite(sprBackFloor,image_index,x,y)
	}
	else
	draw_sprite(sprBackFloorSmall,image_index,x,y)
}