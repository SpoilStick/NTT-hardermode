//{
global.CrystalFreakIdle = sprite_add_base64("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", 9, 24,24)
global.CrystalFreakWalk = sprite_add_base64("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", 10, 24,24)
global.CrystalFreakHurt = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAJAAAAAwCAYAAAD+WvNWAAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAAEiklEQVR42u1cvUokQRCufoYNBQ9z8WDZdA3uwA13j40M1gcwMBVOUBRW9AV8gDMwumMMT9DgTGVBMRcFQ59hLrlqvil6xp2/namzKtHVsSnr+6rrq+redXEck5lZUXNGIDMjkJkRyMwIZGYEMjNrnkAxETm1AXEujuPY/G+IQLiY0xj8n6PfNI4GpJFETfhfJYFCCzlNwV9b/kIH3V2K3u7o/HZPFYma8r8qAmUt4jQEf9Kf0v3ztQeAiNSQqEn/jUCQvZ8/faVRp0fR2x2NOj01paxJ/41AAAAR0cPLTfIfU0SgJvwvQqA4QJB5FnE51qs12DLAEoCns0eaXb0SEdE4GmQCEVrvI/lfBYFyx6BJ4c2dChsHGAGY9Kd0tDkkIsoEgrXHqNPzzyyCQG3y/z0CxTl3mTwkiusueZxdnKX8cwSgu7FEK9urtLb8hR5eboi1BNvR5tCDgN0NBx9/XzWBNPifRaCmRtSuykzlzJv0p74zYQCitzsfwMPZqf9bBCANBF6vLgJp8T+NQE2eb7gqgj/pT+n8ds8Hf9Tp+Wx9OntMPM8BPJyd0kF31wc6DYRxNEgAwLayvVoJgTT53zYCVZa9HCA2rvOHs1OvE2RwOYu5HWbDTO9uLPlgS7Fa5e6jxf8QgdpwuuqqDD4R0f3zdWJ7x22cQRie7Phnfvz57n/369uV1xv7F5d+xsKlhMtMFZ2YNv/bSqDCJGLtgFv4/fO1D7zMzBBI/BVta/04AYpzLgEglpsyE2Bt/reZQIVIhABgIFkbSGMQRp2eLwFFAGAtsX9x6QEpVBKU+a+BQHEeMjEAKChZO6A2YC0wu3r1GoFLwDwAbK0fJ/SJXA/b5TxlQZv/TCANt8rcPNNZPFTkQGOXwiDIgMnA4/eoIXgt7GawrMgB3zwlQbP/2ggUvG8kdQMCgCazGMsAZvbwZCf4nAQANYjUJvw6lM2hibBW/zURKHVXCgEQamVZKOI0FzXEe2AhABxk7GzkWvw8Z7M8gvAgKPYfNVCslUCy/cWuBTsMHMCtbK8Slg257ctpLgebSwYCI6fAoZIgs16WBa3+lyWQa8vkOq39xdNp1g1y6ooHlCheUWdgRoc0hwQO7+VIkLirytqFtPgvu7BYK4FCQ7jz271E1oYOFfMAgLoEy8E4GvjTcAlCKPghAmn1v0wb70oQr7buDEHAcx6eb2SVD5l1aUI11LEwADgpRlDxohdevZDdjTb/y5yFuQXPj9II69KOA1AkooXaUgQuDwB4DIAgIAChnSbr2ECT/2Wvc1S1C71XCgtNdPE1BpdPtbPKR1arzK9Zo2ApCQay4ERag/95biTGNe1Ci3n/0r/gpGUVPyMvZKEOwKsSMvgf1f+yV1rVEGie8oFvj8GOJdQeL5pAbfW/7jcWtpJEacDgWD9rSouANEGiNvlvBBLHCSFxmWZ8D7ktBGrC/zoJ5HL8TasAmPd2Xt6T9v/Rf/twhQAI9uEKzRGoVbtKGZGq9SNeFu2/fcCUmRHIzAhkZgQyMwKZmRmBzIxAZkYgMyOQmZkRyKxe+wubdasD8Rq3kgAAAABJRU5ErkJggg==", 3, 24,24)
global.CrystalFreakDead = sprite_add_base64("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", 6, 24,24)
global.sprCrystalPropBlueDead = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAGAAAAAYCAYAAAAF6fiUAAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAACpUlEQVRo3u2Yv2sUQRTHv2+THFxSmEAMmivuuiAKEfLDIkQ4G7sNWIgEDJLCzjKksUxz+B9YBEkghYXo/gE5iFwhhxhBEK1yRUxARW08MOeNRTLD7N7uMrf7Lrsx+7pZlveG72ff+84OCSGQRXJBGYAMQAagixAAKJMtGQD6i6cJgQt6Kj8eUwB+L1FKhf7vOiDshWwc9RiASXtQSr/4M9FRSQEQKeiiVABKcwecC09IEkCY4GnokHMHgL0DiKhj/0IItv1y5E8MgN/muUUiInHz9W+1rjvv0Hwyx1aDiMRle1mtvza+o/X+VVf5gwB083tMHOL0QiQiEnvtX1iqDfjW4Mi/+PABqoeW67kEYZI/UQB+4nCKREQiv1LDx8o1AHDV2pkfZAHQP7mAuzdGAMAF4sBZPzUAkSCEicMlEhGJnL0GAOibKKtaAFCyLrAAsIozAABreFyBAICtp88iA4h6PUpc4nCJpNeQdZrblePFWyf2mNMBSAit/d3jxbeGUX4vgLh30xRHHBkcIimTn7LVs/ytVTS3K9irb2KpNhBrzKn8o0X1rL9wHa39XSzeKaN6aBl5QSIAgsTRAcQRyWvwG3NHKM3cVwByhVl8fvlIjb2d+cHuTi6e00/5UhtbL6oKgDU0hnu3rypPOHDWA/NzjiAjAGHi6ACiiiTNXY8rqx/UyQpTNnKFWQDoyG80s09OPno8f/NDHT8xWoQ1NAYAHRASBxAmjtwcEQmvSNKkTUTyeouCelJDz697j6nfeI1Xhhw1RCQkBN2Yg0yZ6xRk/PXn7DWXMH8/VfHHeezanD6iJIi+ibLRKPID4FtjekFICDqgKADaP7+g3ai7818sCQlBBxTnT5jt7zS/UgsUhquGBN2LGhKCNTzuKz7nVUQWPY5/r8v74M+K7RMAAAAASUVORK5CYII=",4,12,12)
global.sprCrystalPropGreenDead = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAGAAAAAYCAYAAAAF6fiUAAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAACkklEQVRo3u2YsW/TUBDGv7NU1MEVGTpGkUU7ZCoZu8CAEEKIkaFJF4ao7IWh/AUwADsRAwuBoWOFqgp1KAtjBEsXKivyiFCgGVCRfAyxH7ZjWy/2pTbUN/lZ1t3T9/Pd92xiZlRRXFAFoAJQAZghGABVshUDIPjgeUKQgl7Kl0cXQNxDVFKh/7sOSHugGkdzBqDTHlTSN/6f6KiiAHAJuqgUgMrcARfCE4oEkCZ4GTrkwgEQ7wAimto/M4vtVyJ/YQDiNi8tEhFxbfhGrX8ef4F766lYDSLiS50bav179B38fjBT/iQAs3wek4Q48xCJiNh2f6Dl7MXWkMjf2bqP3fEwdN8HoZO/UABx4kiKRERsHOzg5OZjAAjVGjU2RQDQnRba9RYAhECc9Q/PDUAmCGniSIlERGz0upOFtaxqAYBlXJYBcL05WZiLCgQA9HuvMwPI+nuUpMSREilUw6vj7tuT6xfvco+5EAAPAjunk+vPX7XyRwHk/TdNecTxQ0IkZfLbG+qecduCu2/DfvYSLWcv15hT+ddW/t6rL4GdU3TWr2F3PNTygkIAJIkTBJBHpKjBD+p3YT16oAAYTRMn3edq7I0am7OdXCKnn3tmA/1PHxUAqi2g3VxXnnDWP0zMLzmCtACkiRMEkFUk39yDceXDE3WywvYGjKYJAFP5tWa2d/IJxltnoI6fWFsB1RYAYApC4QDSxPE3R0QcFck3aR2Rot6ioHo1QvkD3qPrN1HjVaJ5o4aIWEEIGHOSKUudgrTffqPXDQkD+xvcrVehzQVHlA8C1rLWKIoFEFfjYZt9CEFAmQCMf4GPjsP5r66yDyEIKM+XsNjXqXGwkyiMWA0f9BxqKAjmYqz4kr8iqphz/AFhRQHvZYWcNQAAAABJRU5ErkJggg==",4,12,12)
//}

#define area_name
return string(choose("q","4","a","4","\","4",string(GameCont.subarea),",",">","F","-","*","!","^"))+string(choose("q","r","a","]","\","+",string(GameCont.subarea),",",">","F","-","*","!","^"))+string(choose("q","r","a","]",string(GameCont.subarea),string(GameCont.subarea),string(GameCont.subarea),",",">","F","-","*","!","^"))

#define area_sprite(q)
switch (q) {
    case sprFloor1: return sprFloor104;
    case sprFloor1B: return sprFloor104B;
    case sprFloor1Explo: return sprFloor104Explo;
    case sprWall1Trans: return sprWall104Trans;
    case sprWall1Bot: return sprWall104Bot;
    case sprWall1Out: return sprWall104Out;
    case sprWall1Top: return sprWall104Top;
    case sprDebris1: return sprDebris104;
	case sprDetail1: return sprDetail104;
}
#define area_transit
if (lastarea != "caves") and lastarea == "bigdog"{
    if Player.curse == 0 and Player.bcurse == 0
		area = "caves";
	else
		area = "cavesinv"
}
else if (lastarea != "cavesinv") and lastarea == "caves"{
    if Player.curse >= 1 || Player.bcurse >= 1
		area = "cavesinv"
}
#define area_finish
if subarea < 3{
	area = "cavesinv";
	subarea += 1;
	if instance_exists(Player) and Player.curse == 0 and Player.bcurse == 0{
		area = "caves";
		subarea += 1;
		}
	}
else{
	area = "city";
	subarea = 1;
	}
sprite_restore(sprHyperCrystalIdle);
sprite_restore(sprHyperCrystalHurt);

#define area_setup
sound_play_music(mus104)
sound_play_ambient(amb104);
goal = 145;
background_color = make_color_rgb(255,156,35);
with BackCont
	shadcol = 66;
with TopCont
	darkness = 1;
//{
sprite_replace_base64(sprHyperCrystalIdle,"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",6,48,48 )
sprite_replace_base64(sprHyperCrystalHurt,"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",3,48,48 )
//}
#define area_start

with Floor if random(7)<1
	with instance_create(x,y,TopDecalInvCave)
		dir = choose(-1,1) 
with Wall if random(12)<1{ 
	if place_meeting(x+16,y,Floor)
		with instance_create(x+16,y,Bones){
			sprite_index = sprInvCaveDecal
			image_xscale = 1
			}
	else if place_meeting(x-16,y,Floor)
		with instance_create(x,y,Bones){
			sprite_index = sprInvCaveDecal
			image_xscale = -1
			}
	}
if GameCont.subarea=3{
 //hypercrystal
	with instance_furthest(10016, 10016, Floor){
		instance_create(x+16,y+16,HyperCrystal)
		if (skill_get(18)) with instance_nearest(x,y,Floor){
			mod_script_call("mod", "props", "cave_create",x+16+lengthdir_x(64,point_direction(Player.x,Player.y,x,y)),y+16+lengthdir_y(64,point_direction(Player.x,Player.y,x,y)))
			}
		}
	}
else{
var fla = 0
with Player
	if string_count("FLAME",weapon_get_name(wep)) > 0 || string_count("FLAME",weapon_get_name(bwep)) > 0 || string_count("FLARE",weapon_get_name(wep)) > 0 || string_count("FLARE",weapon_get_name(bwep)) > 0 || string_count("DRAGON",weapon_get_name(wep)) > 0 || string_count("DRAGON",weapon_get_name(bwep)) > 0 || string_count("INCIN",weapon_get_name(wep)) > 0 || string_count("INCIN",weapon_get_name(bwep)) > 0
		fla += 1
if random(7)<1 fla += 1
if fla > 0 and instance_exists(Bones) with instance_furthest(Player.x, Player.y, Bones){ // icecaves entrance
	mod_script_call("mod", "props", "cave_create",x,y)
	instance_destroy()
	}
}
	
if random(5)<1
	with Floor{
		styleb = 1
		sprite_index = sprFloor104B
		}
else
	with Floor{
		styleb = 0
		sprite_index = sprFloor104
		}
	
with Floor if styleb = 1{
	traction = 2
	}
	
	repeat random_range(16,40)
	with Wall if random(2)<1
		if !place_meeting(x,y+16,Wall) and !place_meeting(x,y+32,Wall) and !place_meeting(x-16,y+32,Wall) and !place_meeting(x+16,y+32,Wall) 
		and !place_meeting(x,y+16,hitme) and !place_meeting(x,y+32,hitme) and !place_meeting(x-16,y+32,hitme) and !place_meeting(x+16,y+32,hitme)
		and !place_meeting(x,y+16,chestprop) and !place_meeting(x,y+32,chestprop) and !place_meeting(x-16,y+32,chestprop) and !place_meeting(x+16,y+32,chestprop)
		and place_meeting(x,y+16,Floor) and random(3)<1
			instance_create(x,y+16,Wall)
	with Wall if random(2)<1
		if !place_meeting(x,y-16,Wall) and !place_meeting(x,y-48,Wall) and !place_meeting(x-16,y-48,Wall) and !place_meeting(x+16,y-48,Wall) and !place_meeting(x,y-32,Wall) and !place_meeting(x-16,y-32,Wall) and !place_meeting(x+16,y-32,Wall) 
		and !place_meeting(x,y-16,hitme) and !place_meeting(x,y-32,hitme) and !place_meeting(x-16,y-32,hitme) and !place_meeting(x+16,y-32,hitme)
		and !place_meeting(x,y-16,chestprop) and !place_meeting(x,y-32,chestprop) and !place_meeting(x-16,y-32,chestprop) and !place_meeting(x+16,y+32,chestprop)
		and place_meeting(x,y-16,Floor) and random(2)<1
			instance_create(x,y-16,Wall)
	with Wall if random(2)<1	
		if !place_meeting(x+16,y,Wall) and !place_meeting(x+32,y,Wall) and !place_meeting(x+32,y-16,Wall) and !place_meeting(x+32,y+16,Wall) 
		if !place_meeting(x+16,y,hitme) and !place_meeting(x+32,y,hitme) and !place_meeting(x+32,y-16,hitme) and !place_meeting(x+32,y+16,Wall) 
		and !place_meeting(x+16,y,chestprop) and !place_meeting(x+32,y,chestprop) and !place_meeting(x+32,y-16,chestprop) and !place_meeting(x+32,y+16,chestprop) 
		and place_meeting(x+16,y,Floor) and random(3)<1
			instance_create(x+16,y,Wall)
	with Wall if random(2)<1	
		if !place_meeting(x-16,y,Wall) and !place_meeting(x-48,y,Wall) and !place_meeting(x-48,y-16,Wall) and !place_meeting(x-48,y+16,Wall) and !place_meeting(x-32,y,Wall) and !place_meeting(x-32,y-16,Wall) and !place_meeting(x-32,y+16,Wall) 
		if !place_meeting(x-16,y,hitme) and !place_meeting(x-32,y,hitme) and !place_meeting(x-32,y-16,hitme) and !place_meeting(x-32,y+16,hitme) 
		and !place_meeting(x-16,y,chestprop) and !place_meeting(x-32,y,chestprop) and !place_meeting(x-32,y-16,chestprop) and !place_meeting(x-32,y+16,chestprop) 
		and place_meeting(x-16,y,Floor) and random(2)<1
			instance_create(x-16,y,Wall)	
	
#define area_make_floor
if "big" in self and big == 1{
	instance_create(x+32, y, Floor);
	instance_create(x+32, y+32, Floor);
	instance_create(x, y+32, Floor);
	}
instance_create(x, y, Floor);
var turn = choose(0, 0, 0, 0, 0, 0, 0, 90, -90, 90, -90, 180);
direction += turn;
if (turn == 180 && point_distance(x, y, 10016, 10016) > 48) {
    // turnarounds - weapon chests spawn in such
    instance_create(x, y, Floor);
	with instance_create(x + 16, y + 16, WeaponChest){
		curse = 1
		sprite_index = sprCursedChest
		}
}
if (random(19 + instance_number(FloorMaker)) > 22) {
    // dead ends - ammo chests spawn in such
    if (point_distance(x, y, 10016, 10016) > 48) {
        instance_create(x + 16, y + 16, AmmoChest);
        instance_create(x, y, Floor);
    }
    instance_destroy();
} else if random(6) < (1+GameCont.loops) {
    // branching
    with instance_create(x, y, FloorMaker){
		big = choose(0,0,0,0,1)
		}
}

#define area_pop_enemies
if (random(8) < 1) mod_script_call("mod", "enemies", "crystalshielder_create", x + 16, y + 16);
if (random(24) < 1) mod_script_call("mod", "enemies", "EliteSpider_create", x + 16, y + 16);
instance_create(x + 16, y + 16, InvSpider);
if (random(6) < 1){
	if (random(3)<1) instance_create(x + 16, y + 16, LightningCrystal);
	else instance_create(x + 16, y + 16, InvLaserCrystal);
	}
if (random(75) < 1) mod_script_call("mod", "enemies", "bigcrystal_create", x + 16, y + 16);
if (random(10) < 1) with instance_create(x + 16, y + 16, RhinoFreak){
	spr_idle = global.CrystalFreakIdle
	spr_walk = global.CrystalFreakWalk
	spr_hurt = global.CrystalFreakHurt
	spr_dead = global.CrystalFreakDead
	}
#define area_pop_props
if (random(4) < 1) instance_create(x + 16, y + 16, LightBeam);
if (random(4) < 1)with instance_create(x + 16, y + 16, CrystalProp){
	if (random(3)<1){
		spr_idle = sprCrystalProp
		spr_hurt = sprCrystalPropHurt
		spr_dead = sprCrystalPropDead
		}
	else if (random(2)<1){
		spr_idle = sprCrystalPropBlue
		spr_hurt = sprCrystalPropBlueHurt
		spr_dead = global.sprCrystalPropBlueDead
		}
	else{
		spr_idle = sprCrystalPropGreen
		spr_hurt = sprCrystalPropGreenHurt
		spr_dead = global.sprCrystalPropGreenDead
		}
	}

#define area_mapdata(lx, ly, lp, ls, ws, ll)
if argument2 = "junkyard"
return [lx+18, 9,1,1,1];
else 
return[lx, 9,1,1,1];