if(isServer) then {

	/* GENERAL CONFIG */

		use_blacklist				= true;			// use blacklist
		blacklist					= [
			[[5533.00,8445.00],[6911.00,7063.00]],	// Stary
			[[0,16000,0],[1000,-0,0]],				// Left
			[[0,16000,0],[16000.0,14580.3,0]]		// Top
		];

	/* END GENERAL CONFIG */

	/* AI CONFIG */

		ai_clear_body 				= false;		// instantly clear bodies
		ai_clean_dead 				= true;			// clear bodies after certain amount of time
		ai_clean_roadkill			= false; 		// clean bodies that are roadkills
		ai_roadkill_damageweapon	= 0;			// percentage of chance a roadkill will destroy weapon AI is carrying
		ai_cleanup_time 			= 7200;			// time to clear bodies in seconds

		ai_patrol_radius 			= 300;			// radius of ai patrols in meters
		ai_patrol_radius_wp 		= 10;			// number of waypoints of patrols

		ai_combatmode 				= "RED";		// combatmode of AI
		ai_behaviour 				= "SAFE";		// behaviour of AI

		ai_share_info 				= true;			// AI share info on player position
		ai_share_distance 			= 300;			// distance from killed AI for AI to share your position

		ai_humanity_gain 			= true;			// gain humanity for killing AI
		ai_add_humanity 			= 50;			// amount of huminity gained for killing an AI
		ai_banditkills_gain 		= true;			// add kill to bandit kill score

		ai_skill_extreme	 		= [["aimingAccuracy",1.00], ["aimingShake",0.80], ["aimingSpeed",0.80], ["endurance",1.00], ["spotDistance",0.80], ["spotTime",0.80], ["courage",1.00], ["reloadSpeed",1.00], ["commanding",1.00], ["general",1.00]]; 	// Extreme
		ai_skill_hard 				= [["aimingAccuracy",0.80], ["aimingShake",0.70], ["aimingSpeed",0.70], ["endurance",1.00], ["spotDistance",0.70], ["spotTime",0.70], ["courage",1.00], ["reloadSpeed",1.00], ["commanding",1.00], ["general",1.00]]; 	// Hard
		ai_skill_medium 			= [["aimingAccuracy",0.60], ["aimingShake",0.60], ["aimingSpeed",0.60], ["endurance",1.00], ["spotDistance",0.60], ["spotTime",0.60], ["courage",1.00], ["reloadSpeed",1.00], ["commanding",1.00], ["general",1.00]];	// Medium
		ai_skill_easy				= [["aimingAccuracy",0.40], ["aimingShake",0.50], ["aimingSpeed",0.50], ["endurance",1.00], ["spotDistance",0.50], ["spotTime",0.50], ["courage",1.00], ["reloadSpeed",1.00], ["commanding",1.00], ["general",1.00]];	// Easy
		ai_skill_random 			= [ai_skill_extreme,ai_skill_hard,ai_skill_hard,ai_skill_hard,ai_skill_hard,ai_skill_medium,ai_skill_medium,ai_skill_medium,ai_skill_medium,ai_skill_easy];

		ai_static_useweapon 		= true;			// Allows AI on static guns to have a loadout 	
		ai_static_weapons 			= ["KORD_high_TK_EP1","DSHKM_Ins","M2StaticMG"]; // static guns

		ai_static_skills 			= true;			// Allows you to set custom array for AI on static weapons. (true: On false: Off) 
		ai_static_array 			= [["aimingAccuracy",0.20], ["aimingShake",0.70], ["aimingSpeed",0.75], ["endurance",1.00], ["spotDistance",0.70], ["spotTime",0.50], ["courage",1.00], ["reloadSpeed",1.00], ["commanding",1.00],["general",1.00]];

		ai_gear0 					= [["ItemBandage","ItemBandage","ItemPainkiller","ItemGoldBar10oz"],["ItemKnife","ItemFlashlight"]];
		ai_gear1 					= [["ItemBandage","ItemBandage","ItemPainkiller","ItemGoldBar10oz","CinderBlocks","metal_panel_kit","ItemGoldBar10oz"],["ItemKnife","ItemFlashlight"]];
		ai_gear_random 				= [ai_gear0,ai_gear1];	// Allows the possibility of random gear

		ai_wep_assault				= [["M16A4_ACG","30Rnd_556x45_Stanag"], ["Sa58V_RCO_EP1","30Rnd_762x39_AK47"], ["SCAR_L_STD_Mk4CQT","30Rnd_556x45_Stanag"], ["M8_sharpshooter","30Rnd_556x45_Stanag"], ["M4A1_HWS_GL_camo","30Rnd_556x45_Stanag"], ["SCAR_L_STD_HOLO","30Rnd_556x45_Stanag"], ["M4A3_CCO_EP1","30Rnd_556x45_Stanag"], ["M4A3_CCO_EP1","30Rnd_556x45_Stanag"], ["M4A1_AIM_SD_camo","30Rnd_556x45_StanagSD"], ["M16A4","30Rnd_556x45_Stanag"], ["m8_carbine","30Rnd_556x45_Stanag"], ["BAF_L85A2_RIS_Holo","30Rnd_556x45_Stanag"], ["Sa58V_CCO_EP1","30Rnd_762x39_AK47"]];	// Assault
		ai_wep_machine				= [["RPK_74","75Rnd_545x39_RPK"], ["MK_48_DZ","100Rnd_762x51_M240"], ["M249_EP1_DZ","200Rnd_556x45_M249"], ["Pecheneg_DZ","100Rnd_762x54_PK"], ["M240_DZ","100Rnd_762x51_M240"]];	// Light machine guns
		ai_wep_sniper				= [["M14_EP1","20Rnd_762x51_DMR"],["SCAR_H_LNG_Sniper_SD","20Rnd_762x51_SB_SCAR"], ["M110_NVG_EP1","20rnd_762x51_B_SCAR"], ["SVD_CAMO","10Rnd_762x54_SVD"], ["m107_DZ","10Rnd_127x99_m107"], ["DMR","20Rnd_762x51_DMR"], ["M40A3","5Rnd_762x51_M24"]];	// Sniper rifles
		ai_wep_random 				= [ai_wep_assault,ai_wep_assault,ai_wep_assault,ai_wep_sniper,ai_wep_machine];	// random weapon 60% chance assault rifle, 20% light machine gun, 20% sniper rifle

		ai_packs 					= ["DZ_Czech_Vest_Puch", "DZ_ALICE_Pack_EP1", "DZ_TK_Assault_Pack_EP1", "DZ_British_ACU", "DZ_GunBag_EP1", "DZ_CivilBackpack_EP1", "DZ_Backpack_EP1", "DZ_LargeGunBag_EP1"];
		ai_skin 					= ["GUE_Soldier_2_DZ", "GUE_Soldier_CO_DZ", "GUE_Soldier_Sniper_DZ", "Bandit1_DZ", "BanditW1_DZ", "BanditW2_DZ", "Functionary1_EP1_DZ", "Bandit2_DZ", "GUE_Commander_DZ", "GUE_Soldier_2_DZ", "GUE_Soldier_Crew_DZ", "GUE_Soldier_MG_DZ", "Ins_Soldier_GL_DZ", "TK_INS_Soldier_EP1_DZ", "TK_INS_Warlord_EP1_DZ"];

	/* END AI CONFIG */

	/* WAI MISSIONS CONFIG */
	
		wai_mission_system 		= true;			// use built in mission system

		wai_mission_timer 			= (150 + round(random 300)); 		// time between missions 5-15 minutes
		wai_mission_timeout 		= (900 + round(random 900)); 		// time each missions take 30-60 minutes
		wai_mission_fuel 			= ((1 + round(random 9)) / 10);		// fuel inside mission spawned vehicles (10 - 100%)
		wai_crates                	= ["TKSpecialWeapons_EP1","UNBasicAmmunitionBox_EP1","CZBasicWeapons_EP1","TKVehicleBox_EP1","USVehicleBox_EP1","USBasicAmmunitionBox_EP1","GERBasicWeapons_EP1","GuerillaCacheBox_EP1","TKOrdnanceBox_EP1","USSpecialWeapons_EP1","SpecialWeaponsBox"];
		wai_crates_smoke 			= true;								// pop smoke on crate when mission is finished
		wai_keep_vehicles			= false;								// save vehicles to database and keep them after restart
		wai_players_online       	= 1; 								// number of players online before misson starts
		wai_server_fps            	= 2; 								// missions only starts if server FPS is over wai_server_fps
		wai_enable_tank_traps		= true;								// enable the possibility of using tanktraps to better defend a mission
		wai_enable_minefield		= true;								// enable the possibility of using minefields to better defend a mission
		wai_marker					= "\z\addons\dayz_server\WAI\compile\markers.sqf";

		// Missions
		wai_missions 				= ["black_hawk_crash","armed_vehicle","bandit_base","captured_mv22","ikea_convoy","destroyed_ural","disabled_milchopper","mayors_mansion","medi_camp","weapon_cache"];

		// Vehicle arrays
		armed_vehicle 				= ["ArmoredSUV_PMC_DZE","GAZ_Vodnik_DZE","HMMWV_M1151_M2_CZ_DES_EP1_DZE","HMMWV_M998A2_SOV_DES_EP1_DZE","LandRover_MG_TK_EP1_DZE","LandRover_Special_CZ_EP1_DZE","Offroad_DSHKM_Gue_DZE","Pickup_PK_GUE_DZE","Pickup_PK_INS_DZE","Pickup_PK_TK_GUE_EP1_DZE","UAZ_MG_TK_EP1_DZE"];
		armed_chopper 				= ["CH_47F_EP1_DZE","Mi17_DZE","UH1H_DZE","UH1Y_DZE","UH60M_EP1_DZE"];
		civil_aircraft 				= ["AH6X_DZ","AN2_DZ","MH6J_DZ","Mi17_Civilian_DZ"];
		military_unarmed 			= ["GAZ_Vodnik_MedEvac","HMMWV_Ambulance","HMMWV_Ambulance_CZ_DES_EP1","HMMWV_DES_EP1","HMMWV_DZ","HMMWV_M1035_DES_EP1","LandRover_CZ_EP1","LandRover_TK_CIV_EP1","UAZ_CDF","UAZ_INS","UAZ_RU","UAZ_Unarmed_TK_CIV_EP1","UAZ_Unarmed_TK_EP1","UAZ_Unarmed_UN_EP1"];
		cargo_trucks 				= ["Kamaz","MTVR_DES_EP1","Ural_CDF","Ural_TK_CIV_EP1","Ural_UN_EP1","V3S_Open_TK_CIV_EP1","V3S_Open_TK_EP1"];
		refuel_trucks				= ["KamazRefuel_DZ","MtvrRefuel_DES_EP1_DZ","UralRefuel_TK_EP1_DZ","V3S_Refuel_TK_GUE_EP1_DZ"];
		civil_vehicles 				= ["hilux1_civil_1_open","hilux1_civil_2_covered","hilux1_civil_3_open_EP1","SUV_Blue","SUV_Camo","SUV_Charcoal","SUV_Green","SUV_Orange","SUV_Pink","SUV_Red","SUV_Silver","SUV_TK_CIV_EP1","SUV_White","SUV_Yellow"];

		// Dynamic box array
		box_tools 					= ["Binocular","Binocular_Vector","ItemCompass","ItemCrowbar","ItemEtool","ItemFishingPole","ItemFlashlightRed","ItemGPS","ItemHatchet_DZE","ItemKnife","ItemMachete","ItemMatchbox_DZE","ItemToolbox","NVGoggles"];
		box_items 					= ["FoodNutmix","FoodPistachio","FoodMRE","ItemSodaOrangeSherbet","ItemSodaRbull","ItemSodaR4z0r","ItemSodaMdew","ItemSodaPepsi","ItemBandage","ItemSodaCoke","FoodbaconCooked","FoodCanBakedBeans","FoodCanFrankBeans","FoodCanPasta","FoodCanSardines","FoodchickenCooked","FoodmuttonCooked","FoodrabbitCooked","ItemTroutCooked","ItemTunaCooked","ItemSeaBassCooked","ItemAntibiotic","ItemBloodbag","ItemEpinephrin","ItemHeatPack","ItemMorphine","ItemGoldBar","ItemGoldBar10oz","CinderBlocks","ItemCanvas","ItemComboLock","ItemKeyKit","ItemLightBulb","ItemLockbox","ItemSandbag","ItemTankTrap","ItemWire","MortarBucket","PartEngine","PartFueltank","PartGeneric","PartGlass","PartPlankPack","PartVRotor","PartWheel","PartWoodPile"];
		box_food					= ["FoodNutmix","FoodPistachio","FoodMRE","ItemSodaOrangeSherbet","ItemSodaRbull","ItemSodaR4z0r","ItemSodaMdew","ItemSodaPepsi","ItemSodaCoke","FoodbaconCooked","FoodCanBakedBeans","FoodCanFrankBeans","FoodCanPasta","FoodCanSardines","FoodchickenCooked","FoodmuttonCooked","FoodrabbitCooked","ItemTroutCooked","ItemTunaCooked","ItemSeaBassCooked"];
		box_buildables				= ["CinderBlocks","ItemCanvas","ItemComboLock","ItemKeyKit","ItemLightBulb","ItemLockbox","ItemSandbag","ItemTankTrap","ItemWire","MortarBucket","PartPlankPack","PartWoodPile"];
		box_vehicle_repair			= ["PartEngine","PartFueltank","PartGeneric","PartGlass","PartVRotor","PartWheel"];
		box_medical					= ["ItemAntibiotic","ItemBloodbag","ItemEpinephrin","ItemHeatPack","ItemMorphine"];
		box_random					= [box_tools,box_items,box_food,box_buildables,box_vehicle_repair,box_medical];

	/* END WAI MISSIONS CONFIG */

	/* STATIC MISSIONS CONFIG */

		static_missions				= false;		// use static mission file
		custom_per_world			= false;		// use a custom mission file per world

	/* END STATIC MISSIONS CONFIG */

	configloaded = true;

};
