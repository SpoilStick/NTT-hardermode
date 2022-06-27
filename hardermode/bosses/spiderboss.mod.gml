#define spiderboss_create(x_,y_)
with instance_create(x_,y_,CustomEnemy){
	name = "spiderboss"
	hitid = [sprSpiderWalk,"charlette"]
	spr_idle = sprSpiderIdle
	spr_walk = sprSpiderWalk
	spr_hurt = sprSpiderHurt
	spr_dead = sprSpiderDead
	snd_hurt = sndSpiderHurt
	image_xscale = 4
	image_yscale = 4
	team = 1
	direction = random(360)
	maxhealth = 800
	friction = 0.4
	size = 1
	target = 0
	targetvisible = 0
	raddrop = 300
	spr_shadow = shd64
	mask_index=mskBandit
	
	walk = 0 
	intro = 0 
	fire = 100
	dodge = 0
	
	on_step = script_ref_create(spiderboss_step)
	
	return id;
	}
#define spiderboss_step
if(nexthurt > current_frame){
	if(sprite_index != spr_hurt){
		image_index = 0;
		sprite_index = spr_hurt;}
		}
	else{
		if(speed > friction) 
			sprite_index = spr_walk;
		else
			sprite_index = spr_idle;
		}
if(instance_exists(Player)) 
	target = instance_nearest(x,y,Player);
else
	target = 0;
if(instance_exists(target) && collision_line(x,y,target.x,target.y,Wall,0,0) < 0)
	targetvisible = 1;
else
	targetvisible = 0;	
	
if(target > 0){
	if(targetvisible){
		if(target.x > x)
			image_xscale = 1
		else 
			image_xscale = -1
		}
	}
	
trace(dodge,walk,fire)
	
if dodge > 0
	dodge-=1

else
	with instances_matching_ne(projectile,"team",team){
		if distance_to_object(other)<32
		with other{
			motion_add(point_direction(x,y,target.x,target.y)+choose(90,-90),16)
			dodge += choose(0,0,50,50,100,500)
			repeat(16)
			with instance_create(x,y,Dust)
				motion_add(other.direction+random_range(-180,180),random(6))
			}
		}
if speed > 6
	speed = 6
if walk>0{
	motion_add(direction,0.5)
	walk-=1
	}
else 
if random(50)<1{
	walk += random(20)
	direction = random(360)
	}
	
if fire>0
	fire-=1
else{
	with instance_create(x,y,CustomProjectile){
		name = "spidersnareseed"
		motion_add(point_direction(other.x,other.y,other.target.x,other.target.y)+choose(10,-10),16)
		sprite_index = sprEnemyBullet1
		image_angle = direction
		team = other.team
		damage = 0
		creator = other
		on_destroy = script_ref_create(spidersnareseed)
		}
	fire += 500
	}
	
#define spidersnareseed

with instances_matching_ne(Floor,"object_index",FloorExplo) if distance_to_object(other)<50{
	sprite_index = sprFloor4B
	traction = 2
	if random(4)<1 instance_create(x+random(32),y+random(32),FrogEgg)
	}
