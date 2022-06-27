//{
global.pizzasewersentrance = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAEAAAAAgCAYAAACinX6EAAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAACDUlEQVRo3u2Zu07DMBSG0wkxcBPiMrQLDI2YGDog1LWqOhXxCJ37OJ37CAgmVLFWqEMHpqodYIGhUCEuGVCmMCBXjnMc+/jYaUXjMbbz+/98Ozkp+KVG5K1wKeQALAP4+Jp5O1t7CzOE1U8AiMLgr2JtYyEGstZ3DiAKA9S7stY32gJskImXZTRrNvVRAJjwxfElWH/9eOUUBNP3t4/A+vHnE1pfC4BofPz+ALbzd0+dgFAZp4BQAojCIGG8VW+Dbbu9TgIEFUIUBtrGIRAq/VQAovlWve3dD/veeaUKtmd13V7HCgSKeV0IWgCYeWYyrTA4DIIIAHMruAAg6scA8EGEzLxs9sVVkAZBJ4ixYV5nFUhXAA+ALWeVeR4C2zYYALZnnwSgWazFZp/f10pBoN/Nyx1q0OV1u+H05GdGByA7/aHbIAeQA3AHYDAdgc/PDk/+N4DBdOS9fg9T+x1sVkAQVgAs6hDUMa4CgQbAQ6Beg1jz/DVoYl6EYHQNQqvANBAyAcACI1PzPIS0DFEMABSmQhAwoTDGvKgfhYE3eeuTAJT3q7SESLNYI30Mmc7+/Dx5viX190sNej6Ah4D5HKaap0JQmUdnhEQQsoSILeOmIHSMk3KCDIRYZMZtJzplIGTG0/Qz+TGyzKl2rZTYsg7eRlFmhOYNgQG4HlwW+loAZAJZAXCpn/8cXXUAv1vt+dCMedNFAAAAAElFTkSuQmCC",2,0,0 )
global.pizzaHPchest = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAHAAAAAPCAYAAAA8lEtfAAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAACtklEQVRYw+1YPWhTURT+jsXVQqHg2BIxSeeUpk4F46BDcbBQEJvSLkUpuGkzOTV0E4oQBKVJUQpdSgY7WMGpP6Rzf8RiRqEg6Fra69L7uO/l/rz7E1HwLiGP953vO/d797x3DjHG8H/9u4sYYyAiZxcZYwTA5ykgX/5u6iciL37ZARFjuugXY0YGfqgvWid/r1wJZqAv/2aj6ownIqarRKrYIl6n/+7UgjRmWrwuZmTg16NW7Ibt6kQH6NbCeuz/jdxwMAND8J8c7zvhOX8mW1CKXJ0eNOJ1+h+tfJOexLR4mf5MtoAoeTHAdnUCk0+u4+XDXTx9V4yur736HgtymYBfDb8sJ6H4T473rfB8cX4bE2V4nf6rwzvB8ycAbGbkGir1TwCAxfJtvF6r4OJ0I0bEg4lBQhkYmv+8vZQaD6CD/83uz1QmqvA6/UkTffNXGggAF6cbsafgSv99vH9R+yMG+vJzE014lQE9A8+Umnmp1uF1+sVy6pt/h4HJIOISwd0yMCT/eXvJiE8aYGOiCa/Tz0u1b/5SA3kQcY3l+lQv8eAGhuSfLfZq8TIDRH5dOeXvL1f9mWzBO//IwAePn+PmyJ3UG/9l7yP/DPZuRmeLvc78ql5LVvJUeFP+ug8bboCPfh98ZOBYrs9646fqbYSa5KxODzrx8w3QnRRVfBFvyl/WBogGuu5fWn4VPnYCS/lmx01bh+OmRjjYWOisNWrNLz7BsoZZ15An8ab8ZfHFE+iyfzb8MjwBYI3yAD4f/UBteQgAMDd/gNryEObmD7Qb8nbvF0LPUs9ao1b8ACDql/VasneiCm/KP3nSiQg++2fLn8QTgNgYp5RvYutwPPrt9hhNht9sVFPzJ8dQpXzTaKJujJUmf+EkOuFN+q3wPgZ0y8A0Q2TTINhUGcQxlmPuf8Ug/jduHfYQabsXGAAAAABJRU5ErkJggg==",7,8,8 )
//}
#define area_name
return "2-?";

#define area_sprite(q)
switch (q) {
    case sprFloor1: return sprFloor102;
    case sprFloor1B: return sprFloor102B;
    case sprFloor1Explo: return sprFloor102Explo;
    case sprWall1Trans: return sprWall102Trans;
    case sprWall1Bot: return sprWall102Bot;
    case sprWall1Out: return sprWall102Out;
    case sprWall1Top: return sprWall102Top;
    case sprDebris1: return sprDebris102;
	case sprDetail1: return sprDetail102;
}

#define area_transit
if (lastarea != "turtles" && area == 102) {
    area = "turtles";
}
#define area_finish
area = "sewers";
subarea = 3;
lastarea="turtles"
sound_stop(sndFishTB)


#define area_setup
goal = 65;
background_color = make_color_rgb(160, 75, 90);
BackCont.shadcol = 1179657;
TopCont.fog = sprFog102;
TopCont.darkness = 1;
sound_play_music(mus102);
sound_play_ambient(amb102);

#define area_start
   with Floor if random(7)<1
	with instance_create(x,y,TopDecalPizzaSewers)
		dir = choose(-1,1)
	with Wall if place_meeting(x+16,y,Floor) and place_meeting(x+48,y,Wall){
		with instance_create(x+16,y+2,Bones){
			sprite_index = sprPizzaSewerDecal
			image_xscale = 1
			}
		with instance_create(x+48,y+2,Bones){
			sprite_index = sprPizzaSewerDecal
			image_xscale = -1
			}
		}
   var _floor = instance_furthest(10016, 10016, Floor);
    with (instance_nearest(
        (_floor.x * 2 + 10016) / 3 + random(128) - 64,
        (_floor.y * 2 + 10016) / 3 + random(128) - 64, Floor)){ 
			
				mod_script_call("mod", "turtles", "turtle1_create", x + 16, y + 16);
				mod_script_call("mod", "turtles", "turtle2_create", x + 16, y + 16);
				mod_script_call("mod", "turtles", "turtle3_create", x + 16, y + 16);
				mod_script_call("mod", "turtles", "turtle4_create", x + 16, y + 16);
				instance_create(x + 16, y + 16, Rat);			
			}
	with _floor with instance_create(x+16,y+16,TV){
		my_health+=40
		with instance_create(x,y,HealthChest){
			sprite_index = global.pizzaHPchest
			spr_dead = sprPizzaBoxDead
			}
		instance_create(x,y,AmmoChest)
		}
#define area_make_floor
instance_create(x, y, Floor);
var turn = choose(180, 0, 0, 0, 0, 0, 0, 90, 90, 90, -90, -90, -90, 180);
direction += turn;
if (turn == 180 && point_distance(x, y, 10016, 10016) > 48) {
    // turnarounds - weapon chests spawn in such
    instance_create(x, y, Floor);
    instance_create(x + 16, y + 16, WeaponChest);
}
if (random(19 + instance_number(FloorMaker)) > 22) {
    // dead ends - ammo chests spawn in such
    if (point_distance(x, y, 10016, 10016) > 48) {
        instance_create(x + 16, y + 16, AmmoChest);
        instance_create(x, y, Floor);
    }
    instance_destroy();
} else if (random(6) < 1) {
    // branching
    instance_create(x, y, FloorMaker);
}

#define area_pop_props
if (random(12) < 1) instance_create(x + 16, y + 16, PizzaBox);

#define area_mapdata(lx, ly, lp, ls, ws, ll)
return [lx, -9,1,1,1];