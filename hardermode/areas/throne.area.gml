#define area_name
return "throne";

#define area_sprite(q)
switch (q) {
   case sprFloor1: return sprFloor7;
   case sprFloor1B: return sprFloor7;
   case sprFloor1Explo: return sprFloor7Explo;
   case sprWall1Trans: return sprWall7Trans;
   case sprWall1Bot: return sprWall7Bot;
   case sprWall1Out: return sprWall7Out;
   case sprWall1Top: return sprWall7Top;
   case sprDebris1: return sprDebris7;
}

#define area_transit
if (lastarea = "palace" and lastsubarea == 4){
		area = "throne";
}

#define area_finish
area = "end";
subarea = 0;
loops += 1;
hard += 10


#define area_setup
sound_play_music(mus7)
goal = 480+(64*(min(GameCont.loops*2,4)))
background_color = make_color_rgb(97,29,36);
with BackCont
	shadcol = 786950;

sprite_replace_base64(sprBackFloor,"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",4,14,10 )
sprite_replace_base64(sprBackFloor2,"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",4,14,10 )
sprite_replace_base64(sprBackFloorSmall,"iVBORw0KGgoAAAANSUhEUgAAAIAAAAAwCAYAAADZ9HK+AAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAADT0lEQVR42u2cPW4bMRCFuZ3hJkAaNdsYCNym8A3S+jQ5SU7jVjdw4VYQoGabbQKkEdRtKhrEZIacIWd/lH2sZGuFN/PmIzkUbHbTNAWM/Y4OAAAAuAAAtjteD/30Ng7dXgs0d/5ZAF4PvfgmF1T6vFfQUgxL6Fvz94whp+2pLwJQCkAzWougieFtHDoLJJ7aJf3aOCzel/RL2rMC0FKENfW9tJcAoFWfBcAzAABgi8FbGwAAAAAAAAAAAAAAAGAVALZQhC134QBg58cwAAAAAAD0AQD0V9L+B4ClCQQAAACnAACAFWAt/UUA2HojBAAAAAAAADgG/rcA4HsAAAAAAAAAqALguT98vj4N410WAQBUAJAWng4KgvRs+hwAsGtrfJ0FgFzxaRClZ+NzXkWgehoz7g0ArafRj9MwZn0xAfDz5UWVPCfqBYC2+BYQ1lqGa+DTAkC3Z+5zp2G0AfD9y9epf3gsmj3criGEEH58e1IVpbUAllnhDUDNqtO6+uSWf83EawIgvpaKmwIQR//wmJ2xv97fmwDIAafpSWr0a2aixXxpxBrQiWgtfjMAKQjUZAoAhYAGejxfwsef310rADngvACIPuRWN21BrLpcDVL/h9v182ftFrw4AOl78bPD7aoGIG5DWgA0RtwzAGmuKQDUZ5cmsAYAzqjj+dIEAAdXqhlNkQoQ9eNz1qVYWoapwaWtqWULyOmnOUo1eu4PRQDZPwnLLUFp0prgagAo9SLH88UEgFXbswi1/xehXYFSALmeZFYANE1i/GztTJBmVkzyeL6wy18K6RwA0BjWAEDSbgYgtw/RvVjaezwAkM7EnPlcs+QJQNx7Nbl6ACDln+YurQBp7tX3A0gmSM2ZtEqEEMzmU31uC5AaIS8AaB8g6eQ8aL0gI3cczGm7ASCBYAGgtvhcH8ARXwLAA8BSU8x54HFFjaYZlnLXFF8NAKVROgnsHYB0tORdAiCna9U23RImGSL1CZ4mcAXXzI7WGErHYo8itHwnsCgAWhA8DcjtxUvEoMl1DQC8wLsLADSa3nqcdtSgsdDfzwF/CYBazeqLIjkT5jBAA8Kcetrcl9TznACuACxp/tJFXzuOVM/T+6arYrdSjD0OL+9xWfTOx1+HelfsgqfDDgAAAABJRU5ErkJggg==",4,7,8 )	
#define area_start
Player.x = 10016
Player.y = 10516
	with instances_matching(Floor,"nokill",1){
			Player.x = x
			Player.y = y
			instance_create(x+16,y-1568-(64*(min(GameCont.loops*2,4))),NothingInactive)
			instance_create(x+16,y-1100,Carpet)
			}
	with instance_create(10016,0,CustomEnemy){
		name = "portalblocker"
		canfly = 1
		}
with RadChest depth = 2
with Player{
			image_alpha = 1
			can_shoot = 1
			if race = "steroids"
				bcan_shoot = 1
			canwalk = 1
			reload = 0
			}
#define area_make_floor
if instance_number(Floor)<=1
	with instance_create(x,y,Floor){
			nokill = 1
			}
instance_create(x,    y-96, Floor);
instance_create(x,    y-64, Floor);
instance_create(x+32, y-64, Floor);
instance_create(x-32, y-64, Floor);
instance_create(x+32, y-32, Floor);
instance_create(x-32, y-32, Floor);
instance_create(x+64, y-32, Floor);
instance_create(x-64, y-32, Floor);
instance_create(x,    y, Floor);
instance_create(x+32, y, Floor);
instance_create(x-32, y, Floor);
instance_create(x+64, y, Floor);
instance_create(x-64, y, Floor);
instance_create(x+96, y, Floor);
instance_create(x-96, y, Floor);
if distance_to_object(Generator)>160 and distance_to_point(10016,10016)>240 and instance_number(Generator) < 2+(min(GameCont.loops*2,4)){
	instance_create(x- 96-32, y, Floor);
	instance_create(x-128-32, y, Floor);
	instance_create(x-160-32, y, Floor);
	instance_create(x- 96-32, y-32, Floor);
	instance_create(x-128-32, y-32, Floor);
	instance_create(x-160-32, y-32, Floor);
	instance_create(x- 96-32, y+32, Floor);
	instance_create(x-128-32, y+32, Floor);
	instance_create(x-160-32, y+32, Floor);
	with instance_create(x-128-32,y,Generator){
		image_xscale = 1
		my_health = 60
		}
	instance_create(x-128+64,y-64,ThroneStatue)
	instance_create(x+ 96+32, y, Floor);
	instance_create(x+128+32, y, Floor);
	instance_create(x+160+32, y, Floor);
	instance_create(x+ 96+32, y-32, Floor);
	instance_create(x+128+32, y-32, Floor);
	instance_create(x+160+32, y-32, Floor);
	instance_create(x+ 96+32, y+32, Floor);
	instance_create(x+128+32, y+32, Floor);
	instance_create(x+160+32, y+32, Floor);
	with instance_create(x+128+64,y,Generator){
		image_xscale = -1
		my_health = 60
		}
	instance_create(x+128-32,y-64,ThroneStatue)
	}

direction = 90

#define area_pop_enemies


#define area_pop_props


#define area_mapdata(lx, ly, lp, ls, ws, ll)

return [lx+9, 0];
