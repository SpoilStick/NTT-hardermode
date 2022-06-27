#define area_name
return "0-0";

#define area_sprite(q)
switch (q) {
    case sprFloor1: return sprFloor0;
    case sprFloor1B: return sprFloor0;
    case sprFloor1Explo: return sprFloor0Explo;
    case sprWall1Trans: return sprWall0Trans;
    case sprWall1Bot: return sprWall0Bot;
    case sprWall1Out: return sprWall0Out;
    case sprWall1Top: return sprWall0Top;
    case sprDebris1: return sprDebris0;
}

#define area_transit
if lastarea != "end" and lastarea = "throne"{
    area = "end";
}


#define area_finish
area = 1;
subarea = 1;

#define area_setup
sound_play_music(musCredits);
sound_play_ambient(amb0b);
goal = 60;
background_color = make_color_rgb(106, 122, 175);
BackCont.shadcol = c_black;
TopCont.darkness = 0;
sound_stop(sndIDPDPortalSpawn);//shutup

#define area_start

sound_stop(sndIDPDPortalSpawn);//shuutuppp
with Player{
	curse = 0;
	bcurse = 0;
	}
	with Floor if random(7)<1
	with instance_create(x,y,TopDecalNightDesert)
		dir = choose(-1,1)
	with Wall if place_meeting(x+16,y,Floor) and place_meeting(x+48,y,Wall){
			with instance_create(x+16,y,Bones){
				sprite_index = sprNightBones
				image_xscale = 1
				}
			with instance_create(x+48,y,Bones){
				sprite_index = sprNightBones
				image_xscale = -1
				}
		}
		
   var _floor = instance_furthest(10016, 10016, Floor);
    with instances_matching(Floor,"name","fire") with instance_create(x + 16, y + 16, Campfire){
			depth = 0
			mask_index = mskNone
			spr_idle = sprCampfireOff
			spr_shadow = mskNone
			with instances_matching_ne(prop,"object_index","Campfire") if distance_to_object(Campfire)<16
				instance_delete(self)
			mod_script_call("mod", "props", "leave_create", x, y);
			with Player if race_id = 1 and GameCont.loops = 1
			with instance_create(other.x,other.y,WepPickup){
				wep = 115
				motion_add(random(360),6)
				}
			}
with instance_create(0,0,CustomEnemy){
		name = "portalblocker"
		canfly = 1
		}
// {
sprite_restore(sprBanditBossIdle);
sprite_restore(sprBanditBossWalk);
sprite_restore(sprBanditBossFire);
sprite_restore(sprBanditBossTell);
sprite_restore(sprBanditBossDash);
sprite_restore(sprBanditBossStop);
sprite_restore(sprBanditBossHurt);
sprite_restore(sprBanditBossDead);
sprite_restore(sprWeaponChestOpen);
sprite_restore(sprSpiderIdle);
sprite_restore(sprSpiderWalk);
sprite_restore(sprSpiderHurt);
sprite_restore(sprSpiderDead);
sprite_restore(sprHyperCrystalIdle);
sprite_restore(sprHyperCrystalHurt);
sprite_restore(sprGoldTankIdle);
sprite_restore(sprGoldTankWalk);
sprite_restore(sprGoldTankDead);
sprite_restore(sprGoldTankHurt);
sprite_restore(sprGoldTankExplode);
sprite_restore(sprBackFloor);
sprite_restore(sprBackFloor2);
sprite_restore(sprBackFloorSmall);
	
sound_restore(sndEraser)
sound_restore(sndHyperSlugger)
sound_restore(sndDoubleFireShotgun)
sound_restore(sndDoubleShotgun)
sound_restore(sndFireShotgun)
sound_restore(sndFlakCannon)
sound_restore(sndFlakExplode)
sound_restore(sndHeavySlugger)
sound_restore(sndSawedOffShotgun)
sound_restore(sndShotgun)
sound_restore(sndSlugger)
sound_restore(sndSuperFlakCannon)
sound_restore(sndSuperFlakExplode)
sound_restore(sndSuperSlugger)
sound_restore(sndUltraShotgun)
sound_restore(sndWaveGun)
sound_restore(sndBloodLauncherExplo)
sound_restore(sndBloodLauncher)
sound_restore(sndClusterLauncher)
sound_restore(sndFlareExplode)
sound_restore(sndFlameCannon)
sound_restore(sndFlare)
sound_restore(sndGrenade)
sound_restore(sndGrenadeRifle)
sound_restore(sndHyperLauncher)
sound_restore(sndGrenadeShotgun)
sound_restore(sndExplosion)
sound_restore(sndExplosionS)
sound_restore(sndExplosionL)
sound_restore(sndExplosionXL)
sound_restore(sndExplosionCar)
sound_restore(sndNukeExplosion)
sound_restore(sndRocket)
sound_restore(sndToxicLauncher)
sound_restore(sndUltraGrenade)
sound_restore(sndJackHammer)
sound_restore(sndBloodCannon)
sound_restore(sndMeatExplo)
sound_restore(sndSuperBazooka)
sound_restore(sndHeavyNader)
sound_restore(sndGunGun)
sound_restore(sndEnergySword)
sound_restore(sndEnergyHammer)
sound_restore(sndEnergySwordUpg)
sound_restore(sndEnergyHammerUpg)
sound_restore(sndEnergyScrewdriver)
sound_restore(sndEnergyScrewdriverUpg)
sound_restore(sndDevastator)
sound_restore(sndDevastatorExplo)
sound_restore(sndDoubleMinigun)
sound_restore(sndBouncerSmg)
sound_restore(sndBouncerBounce)
sound_restore(sndBouncerShotgun)
sound_restore(sndHeavyMachinegun)
sound_restore(sndHeavyRevoler)
sound_restore(sndHyperRifle)
sound_restore(sndMachinegun)
sound_restore(sndQuadMachinegun)
sound_restore(sndTripleMachinegun)
sound_restore(sndIncinerator)
sound_restore(sndMinigun)
sound_restore(sndPistol)
sound_restore(sndFrogPistol)
sound_restore(sndPopgun)
sound_restore(sndRogueRifle)
sound_restore(sndRustyRevolver)
sound_restore(sndSmartgun)
sound_restore(sndUltraPistol)
sound_restore(sndBloodHammer)
sound_restore(sndChickenSword)
sound_restore(sndBlackSword)
sound_restore(sndHammer)
sound_restore(sndWrench)
sound_restore(sndShovel)
sound_restore(sndGuitar)
sound_restore(sndUltraShovel)
sound_restore(sndScrewdriver)
sound_restore(sndSuperDiscGun)
sound_restore(sndCrossbow)
sound_restore(sndUltraCrossbow)
sound_restore(sndDiscgun)
sound_restore(sndSeekerPistol)
sound_restore(sndSeekerShotgun)
sound_restore(sndHeavyCrossbow)
sound_restore(sndSplinterGun)
sound_restore(sndSplinterPistol)
sound_restore(sndSuperSplinterGun)
sound_restore(sndToxicBoltGas)
sound_restore(sndSuperCrossbow)
sound_restore(sndGoldGrenade)
sound_restore(sndGoldRocket)
sound_restore(sndGoldDiscgun)
sound_restore(sndGoldSlugger)
sound_restore(sndGoldCrossbow)
sound_restore(sndGoldSplinterGun)
sound_restore(sndGoldMachinegun)
sound_restore(sndGoldFrogPistol)
sound_restore(sndGoldPistol)
sound_restore(sndGoldWrench)
sound_restore(sndGoldScrewdriver)
sound_restore(sndPortalAppear)
sound_restore(sndPortalOpen)
sound_restore(sndSaplingDead)
sound_restore(sndAllyDead)
sound_restore(sndCorpseExplo)
sound_restore(sndCorpseExploDead)
sound_restore(sndPlayerDeath)
sound_restore(sndChest)
sound_restore(sndAmmoChest)
sound_restore(sndGoldChest)
sound_restore(sndCursedChest)
sound_restore(sndHealthChest)
sound_restore(sndHealthChestBig)
sound_restore(sndWeaponChest)
sound_restore(sndBigWeaponChest)
sound_restore(sndBigCursedChest)
sound_restore(sndEXPChest)
sound_restore(sndEnemyDie)
sound_restore(sndRadMaggotDie)
sound_restore(sndFrogExplode)
sound_restore(sndSuperFrogExplode)
sound_restore(sndIDPDPortalSpawn)
sound_restore(sndRatKingDie)
sound_restore(sndRatDie)
sound_restore(sndFastRatDie)
sound_restore(sndGatorDie)
sound_restore(sndBuffGatorDie)
sound_restore(sndMutant1Dead)
sound_restore(sndMutant2Dead)
sound_restore(sndMutant3Dead)
sound_restore(sndMutant4Dead)
sound_restore(sndMutant5Dead)
sound_restore(sndMutant6Dead)
sound_restore(sndMutant7Dead)
sound_restore(sndMutant8Dead)
sound_restore(sndMutant9Dead)
sound_restore(sndMutant10Dead)
sound_restore(sndMutant11Dead)
sound_restore(sndMutant12Dead)
sound_restore(sndMutant13Dead)
sound_restore(sndMutant14Dead)
sound_restore(sndMutant15Dead)
sound_restore(sndMutant16Dead)
//}
#define area_make_floor
if instance_number (Floor) <= 1{
	with instance_create(x, y, Floor){
			name = "fire"
			}
	direction = 0
	with instance_create(x,y,FloorMaker)
		direction = 90
	with instance_create(x,y,FloorMaker)
		direction = 180
	with instance_create(x,y,FloorMaker)
		direction = 270
	}
instance_create(x, y, Floor);
var turn = choose(0, 0, 90, 90, -90, 90, -90, 90, -90, 180);
direction += turn;
if (turn == 180 && point_distance(x, y, 10016, 10016) > 48) {
    // turnarounds - weapon chests spawn in such
    instance_create(x, y, Floor);
}
if random(10)<1{ 
	instance_create(x+32, y, Floor);
	instance_create(x-32, y, Floor);
	instance_create(x, y+32, Floor);
	instance_create(x, y-32, Floor);
	}
if (random(19 + instance_number(FloorMaker)) > 22) {
    instance_create(x, y, FloorMaker);
}
#define area_pop_props
if (random(4) < 1) instance_create(x + 16, y + 16, NightCactus);
if (random(16) < 1) instance_create(x + 16, y + 16, BonePile);

#define area_mapdata(lx, ly, lp, ls, ws, ll)
return [lx+27, 0];