#include maps\mp\_utility;
#include common_scripts\utility;
#include maps\mp\gametypes\_hud_util;


onPlayerDamage( einflictor, eattacker, idamage, idflags, smeansofdeath, sweapon, vpoint, vdir, shitloc, psoffsettime )
{
	if(isSubStr(sweapon, "l96a1_") || isSubStr(sweapon, "wa2000_") || isSubStr(sweapon, "psg1_") || isSubStr(sweapon, "dragunov_") || isSubStr(sweapon, "hatchet_"))
	{
		idamage = self.maxhealth + 99999; 
	}
	else if(isSubStr(sweapon, "concussion_grenade_") || isSubStr(sweapon, "flash_grenade_"))
	{
		idamage = 0.001; 
	}
	else if(isSubStr(sweapon, "airstrike_") // damage restriction table
		|| isSubStr(sweapon, "ak47_") 
		|| isSubStr(sweapon, "ak74u_") 
		|| isSubStr(sweapon, "asp_") 
		|| isSubStr(sweapon, "aspdw_") 
		|| isSubStr(sweapon, "asplh_") 
		|| isSubStr(sweapon, "aug_") 
		|| isSubStr(sweapon, "auto_") 
		|| isSubStr(sweapon, "autoturret_") 
		|| isSubStr(sweapon, "berlinwall_") 
		|| isSubStr(sweapon, "bomber_") 
		|| isSubStr(sweapon, "briefcase_") 
		|| isSubStr(sweapon, "china_lake_")
		|| isSubStr(sweapon, "claymore_")
		|| isSubStr(sweapon, "cobra_")
		|| isSubStr(sweapon, "commando_")
		|| isSubStr(sweapon, "crossbow_")
		|| isSubStr(sweapon, "cz75_")
		|| isSubStr(sweapon, "cz75dw_")
		|| isSubStr(sweapon, "cz75lh_")
		|| isSubStr(sweapon, "defaultweapon_")
		|| isSubStr(sweapon, "DELETEMELATER_")
		|| isSubStr(sweapon, "destructible_")
		|| isSubStr(sweapon, "dog_")
		|| isSubStr(sweapon, "dogs_")
		|| isSubStr(sweapon, "enfield_")
		|| isSubStr(sweapon, "explodable_")
		|| isSubStr(sweapon, "explosive_")
		|| isSubStr(sweapon, "famas_")
		|| isSubStr(sweapon, "flame_")
		|| isSubStr(sweapon, "fnfal_")
		|| isSubStr(sweapon, "frag_")
		|| isSubStr(sweapon, "ft_")
		|| isSubStr(sweapon, "g11_")
		|| isSubStr(sweapon, "galil_")
		|| isSubStr(sweapon, "gl_")
		|| isSubStr(sweapon, "helicopter_")
		|| isSubStr(sweapon, "hind_")
		|| isSubStr(sweapon, "hk21_")
		|| isSubStr(sweapon, "hs10_")
		|| isSubStr(sweapon, "hs10dw_")
		|| isSubStr(sweapon, "hs10lw_")
		|| isSubStr(sweapon, "huey_")
		|| isSubStr(sweapon, "humvee_")
		|| isSubStr(sweapon, "ithaca_")
		|| isSubStr(sweapon, "kiparis_")
		|| isSubStr(sweapon, "kiparisdw_")
		|| isSubStr(sweapon, "kiparislh_")
		|| isSubStr(sweapon, "knife_mp")
		|| isSubStr(sweapon, "ks23_")
		|| isSubStr(sweapon, "m2_")
		|| isSubStr(sweapon, "m14_")
		|| isSubStr(sweapon, "m16_")
		|| isSubStr(sweapon, "m60_")
		|| isSubStr(sweapon, "m72_")
		|| isSubStr(sweapon, "m202_")
		|| isSubStr(sweapon, "m220_")
		|| isSubStr(sweapon, "m1911_")
		|| isSubStr(sweapon, "m1911dw_")
		|| isSubStr(sweapon, "m1911lh_")
		|| isSubStr(sweapon, "mac11_")
		|| isSubStr(sweapon, "mac11dw_")
		|| isSubStr(sweapon, "mac11lh_")
		|| isSubStr(sweapon, "makarov_")
		|| isSubStr(sweapon, "makarovdw_")
		|| isSubStr(sweapon, "makarovlh_")
		|| isSubStr(sweapon, "minigun_")
		|| isSubStr(sweapon, "mk_")
		|| isSubStr(sweapon, "mk82_")
		|| isSubStr(sweapon, "mortar_")
		|| isSubStr(sweapon, "mp5k_")
		|| isSubStr(sweapon, "mp40_")
		|| isSubStr(sweapon, "mpl_")
		|| isSubStr(sweapon, "napalm_")
		|| isSubStr(sweapon, "napalmblob_")
		|| isSubStr(sweapon, "napalmground_")
		|| isSubStr(sweapon, "nightingale_")
		|| isSubStr(sweapon, "pm63_")
		|| isSubStr(sweapon, "pm63dw_")
		|| isSubStr(sweapon, "pm63lh_")
		|| isSubStr(sweapon, "python_")
		|| isSubStr(sweapon, "pythondw_")
		|| isSubStr(sweapon, "pythonlw_")
		|| isSubStr(sweapon, "rc_car_")
		|| isSubStr(sweapon, "rcbomb_")
		|| isSubStr(sweapon, "rottweil72_")
		|| isSubStr(sweapon, "rpg_")
		|| isSubStr(sweapon, "rpk_")
		|| isSubStr(sweapon, "satchel_")
		|| isSubStr(sweapon, "skorpion_")
		|| isSubStr(sweapon, "skorpiondw_")
		|| isSubStr(sweapon, "skorpionlh_")
		|| isSubStr(sweapon, "spas_")
		|| isSubStr(sweapon, "spectre_")
		|| isSubStr(sweapon, "sticky_")
		|| isSubStr(sweapon, "stoner63_")
		|| isSubStr(sweapon, "strela_")
		|| isSubStr(sweapon, "syrette_")
		|| isSubStr(sweapon, "tabun_")
		|| isSubStr(sweapon, "tow_")
		|| isSubStr(sweapon, "turret_")
		|| isSubStr(sweapon, "uzi_")
		|| isSubStr(sweapon, "willy_")
		|| isSubStr(smeansofdeath, "MOD_MELEE"))
	{
		idamage = 0;
	}
	return idamage;
}

itemBans()
{
	self endon ( "death" );
	self endon( "game_ended" );
	self endon( "disconnect" );
	for(;;)
	{
		currentweapon = self getCurrentWeapon();
		if(isSubStr(currentweapon, "psg1_acog_mp"))
		{
			self iPrintLnBold( "^6THIS WEAPON IS ^3RESTRICTED");
			wait 1;
			self takeWeapon( currentweapon );
    		self giveWeapon( "l96a1_mp" );
    		self switchToWeapon( "l96a1_mp" );
		}
	wait 0.05;
	}
}

weaponRegen()
{
	self endon ("death");
	self endon( "game_ended" );
	self endon( "disconnect" );
    self waittill( "weapon_fired" );
    for(;;)
    {
        wait 8;
        currentWeapon = self getcurrentweapon();
        self setweaponammostock( currentWeapon, weaponmaxammo(currentWeapon) );
    }
    wait 0.05;
}

lethalRegen()
{
	self endon ( "death" );
	self endon( "game_ended" );
	self endon( "disconnect" );
	self waittill( "grenade_fire" );
	for(;;)
	{
		lethalnade = self getcurrentoffhand();
		self.pers["equ"] = lethalnade;
    	if( self getweaponammoclip( lethalnade ) == 0 )
		{
			wait 8;
			self setweaponammoclip( lethalnade, 1 );
		}
    wait 0.05;
    }
}

tacticalRegen()
{
	self endon ( "death" );
	self endon( "game_ended" );
	self endon( "disconnect" );
	self waittill( "grenade_fire" );
	for(;;)
	{
		tacticalnade = self getcurrentoffhand();
		self.pers["equSpec"] = tacticalnade;
    	if( self getweaponammoclip( tacticalnade ) == 0 )
		{
			wait 8;
			self setweaponammoclip( tacticalnade, 1 );
		}
    wait 0.05;
    }
}

buttonHandler()
{
	self endon ( "disconnect" );
	self endon( "game_ended" );
	for(;;)
	{
		if(self actionslotthreebuttonpressed() && self actionslottwobuttonpressed())
		{
			self notify ( "suicide" );
		}
	wait 0.05;
	}
}			

messages()
{
	self endon( "disconnect" );
	self endon( "game_ended" );
	self waittill( "spawned_player" );
	spawned = false;

	for(;;)
	{
		if ( spawned == false ) 
		{
			wait 2.5;
			self iprintln( "^1auzziemod T5 ^0[^3DEV^0]" );
			self iprintln( "^1Join the Discord at ^0[^3discord.io/aupluto^0]." );
			self iprintln( "- ^1Press ^0[^3[{+actionslot 3}]^0]^7 + ^0[^3[{+actionslot 2}]^0]^1 to suicide." );
			self iPrintLn(" - ^1More options available in ^0[^3Mod Options^0]^1 in the pause menu.");
			spawned = true;
			break;
		}
	wait 0.05;
	}
}

lastAlert()
{
	self endon( "disconnect" );
	self endon( "game_ended" );
    for(;;)
    {
    	if (self.pers["kills"] == 29 )
    	{
			self iPrintlnBold( "^1YOU'RE AT 29. ^3TRICKSHOT OR BE KICKED." );
			break;
		}
	wait 0.05;
	}
}

suibind()
{
	self endon( "death" );
	for(;;) 
	{
		self waittill ( "suicide" );
		//weaponprinty = self getCurrentWeapon();
		//self iPrintLnBold( weaponprinty );
		self Suicide();
	wait 0.05;
	}
}

replacepro()
{
	self endon("death");
	self endon("disconnect");
	for(;;)
	{
		if ( self HasPerk ( "specialty_fastreload" ) ) // sleight of hand
		{
			self setPerk("specialty_fastads");
    	    //self iPrintLn("sleight of hand pro given");
		}
		if ( self HasPerk ( "specialty_movefaster" ) ) // lightweight
		{
			self setPerk("specialty_fallheight");
    	    //self iPrintLn("lightweight pro given");
		}
		if ( self HasPerk ( "specialty_bulletaccuracy" ) ) // steady aim
		{
			self setPerk("specialty_sprintrecovery");
			self setPerk("specialty_fastmeleerecovery");
    	    //self iPrintLn("steady aim pro given");
		}
		if ( self HasPerk ( "specialty_gas_mask" ) ) // tactical mask
		{
			self setPerk("specialty_stunprotection");
			self setPerk("specialty_shades");
    	    //self iPrintLn("tactical mask pro given");
		}
		if ( self HasPerk ( "specialty_holdbreath" ) ) // scout
		{
			self setPerk("specialty_fastweaponswitch");
    	    //self iPrintLn("scout pro given");
		}
		if ( self HasPerk ( "specialty_gpsjammer" ) ) // ghost
		{
			self setPerk("specialty_nottargetedbyai");
			self setPerk("specialty_noname");
    	    //self iPrintLn("ghost pro given");
		}
		if( self hasPerk( "specialty_detectexplosive" ) && self hasPerk( "specialty_showenemyequipment" ) ) // hacker
		{
			self setPerk("specialty_nomotionsensor");
			self setPerk( "specialty_disarmexplosive" );
    	    //self iPrintLn("hacker pro given");
		}
		if ( self HasPerk ( "specialty_bulletpenetration" ) ) // hardened
		{
			self setPerk("specialty_armorpiercing");
    	    //self iPrintLn("hardened pro given");
		}
		if ( self HasPerk ( "specialty_quieter" ) ) // ninja, likely missing perk
		{
			self setPerk("specialty_loudenemies");
    	    //self iPrintLn("ninja pro given");
		}
		if ( self HasPerk ( "specialty_pistoldeath" ) ) // second chance
		{
			self unsetPerk("specialty_finalstand");
			self unsetPerk("specicalty_pistoldeath");	
    	    self iPrintLnBold("stop using second chance ya nerd");
		}
		if ( self HasPerk ( "specialty_twoattach" ) ) // warlord
		{
			self setPerk("specialty_twogrenades");
    	    //self iPrintLn("warlord pro given");
		}
		if ( self HasPerk ( "specialty_scavenger" ) ) // scavenger
		{
			self setPerk("specialty_extraammo");
    	    //self iPrintLn("scavenger pro given");
		}
		if ( self HasPerk ( "specialty_longersprint" ) ) // marathon
		{
			self setPerk("specialty_unlimitedsprint");
    	    //self iPrintLn("marathon pro given");
		}
		if ( self HasPerk ( "specialty_flakjacket" ) ) // flak jacket, likely missing perk
		{
			self setPerk("specialty_pin_back");
			self setPerk("specialty_fireproof");
    	    //self iPrintLn("flak jacket pro given");
		}
		if ( self HasPerk ( "specialty_killstreak" ) ) // hardline
		{
			self setPerk("specialty_gambler");
    	    //self iPrintLn("hardline pro given");
		}
	wait 1;
	}
}

lastClass()
{
   self endon("disconnect");
   self endon( "game_ended" );
   for(;;)
   {
   		if (self.pers["kills"] == 29 )
    	{
			self waittill( "changed_class" );
			self maps\mp\gametypes\_class::giveloadout( self.team, self.class );
			self iPrintlnBold( " " );
			wait .5;
		}
	wait 0.05;
	}
}

newDefaults()
{
	self_class = self.pers["class"];

	if (isSubStr( self_class, "CLASS_SMG" ) 
	|| isSubStr( self_class, "CLASS_CQB" ) 
	|| isSubStr( self_class, "CLASS_ASSAULT" ) 
	|| isSubStr( self_class, "CLASS_LMG" ) 
	|| isSubStr( self_class, "CLASS_SNIPER" ))
	{
		// give weapons
		self takeAllWeapons();
		pri = randomIntRange( 1, 6 );
		switch(pri)
		{
			case 1:
				self giveWeapon( "l96a1_extclip_mp" , 0, self calcWeaponOptions ( randomIntRange( 0, 15 ), 0, 0, 0, 0 ));
			break;
			case 2:
				self giveWeapon( "l96a1_vzoom_mp" , 0, self calcWeaponOptions ( randomIntRange( 0, 15 ), 0, 0, 0, 0 ));
			break;
			case 3:
				self giveWeapon( "l96a1_ir_mp" , 0, self calcWeaponOptions ( randomIntRange( 0, 15 ), 0, 0, 0, 0 ));
			break;
			case 4:
				self giveWeapon( "psg1_extclip_mp" , 0, self calcWeaponOptions ( randomIntRange( 0, 15 ), 0, 0, 0, 0 ));
			break;
			case 5:
				self giveWeapon( "psg1_vzoom_mp" , 0, self calcWeaponOptions ( randomIntRange( 0, 15 ), 0, 0, 0, 0 ));
			break;
			case 6:
				self giveWeapon( "psg1_ir_mp" , 0, self calcWeaponOptions ( randomIntRange( 0, 15 ), 0, 0, 0, 0 ));
			break;
		}
		sec = randomIntRange( 1, 7 );
		switch(sec)
		{
			case 1:
				self giveWeapon( "asp_mp" );
			break;
			case 2:
				self giveWeapon( "m1911_mp" );
			break;
			case 3:
				self giveWeapon( "makarov_mp" );
			break;
			case 4:
				self giveWeapon( "asp_mp" );
			break;
			case 5:
				self giveWeapon( "python_mp" );
			break;
			case 6:
				self giveWeapon( "cz75_mp" );
			break;
			case 7:
				self giveWeapon( "knife_ballistic_mp" );
			break;
		}

		

		// give nades
		self giveWeapon( "hatchet_mp" );
		self giveWeapon( "concussion_grenade_mp" );
		self giveMaxAmmo( "concussion_grenade_mp" );

		// give perks
		self clearPerks();
		self setPerk( "specialty_movefaster"); // lightweight pro
		self setPerk( "specialty_fallheight" );

		self setPerk( "specialty_fastreload" ); // sleight of hand pro
		self setPerk( "specialty_fastads" );

		self setPerk( "specialty_longersprint" ); // marathon pro
		self setPerk( "specialty_unlimitedsprint" );

		self setPerk( "specialty_bulletpenetration" ); // hardened pro
		self setPerk( "specialty_armorpiercing" );
		self setPerk( "specialty_bulletflinch" );
	}
}

menuresponse()
{
	self endon("disconnect");
	for(;;)
	{
		self waittill("menuresponse", menu, response);
		
		if(menu == game["modopt"])
		{
			if(response == "dropWeap")
			{
				self maps\mp\gametypes\_weapons::dropWeaponToGround();
			}
		}
		wait 0.05;
	}
}