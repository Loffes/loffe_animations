Config = {}

Config.FavoriteButtons = {
	{Button = 'M', Text = '~INPUT_INTERACTION_MENU~'},
	{Button = 'Z', Text = '~INPUT_MULTIPLAYER_INFO~'},
}

Config.Animations = {
	
	{
		name  = 'help',
		label = 'Nödlägen',
		items = {	
	    {label = "Bli arresterad", type = "anim", data = {lib = "random@arrests@busted", anim = "idle_a", repet = 1}},	
		{label = "Beskjuten", type = "anim", data = {lib = "anim@heists@ornate_bank@hostages@cashier_a@", anim = "flinch_loop_underfire", repet = 49}},
		{label = "Beskjuten: Ligg", type = "anim", data = {lib = "anim@heists@ornate_bank@hostages@ped_a@", anim = "flinch_loop_underfire", repet = 1}},
		{label = "Beskjuten: sitt", type = "anim", data = {lib = "anim@heists@ornate_bank@hostages@cashier_a@", anim = "flinch_loop_underfire", repet = 1}},
		{label = "ligg ner", type = "anim", data = {lib = "anim@heists@ornate_bank@hostages@ped_a@", anim = "idle", repet = 1}},
		{label = "Rädd", type = "anim", data = {lib = "anim@heists@fleeca_bank@hostages@ped_d@", anim = "idle", repet = 1}},
	    {label = "Underlägsen", type = "anim", data = {lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right", repet = 1}},
		}
	},
	
	{
		name  = 'driver',
		label = 'Förarsätet',
		items = {
	    {label = "Prata med baksätet", type = "anim", data = {lib = "oddjobs@taxi@driver", anim = "leanover_idle", repet = 32}},
	    {label = "Ge/Ta genom rutan", type = "anim", data = {lib = "oddjobs@taxi@cyi", anim = "std_hand_off_ps_passenger", repet = 32}},
	    {label = "Upp med händerna", type = "anim", data = {lib = "anim@mp_player_intincarsurrenderstd@ds@", anim = "idle_a", repet = 33}},
	    {label = "Träna på gitarren", type = "anim", data = {lib = "anim@mp_player_intincarair_guitarstd@ds@", anim = "idle_a", repet = 33}},
	    {label = "Trumma lite", type = "anim", data = {lib = "anim@mp_player_intincarair_synthstd@ds@", anim = "idle_a", repet = 33}},
	    {label = "chicken", type = "anim", data = {lib = "anim@mp_player_intincarchicken_tauntstd@ds@", anim = "idle_a", repet = 49}},
		{label = "Bli avsugen", type = "anim", data = {lib = "oddjobs@towing", anim = "m_blow_job_loop", repet = 33}},
		{label = "Ha sex", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_player", repet = 33}},
		}
	},	
	
	{
		name  = 'passenger',
		label = 'Passagerarsätet',
		items = {		
	    {label = "uttråkad", type = "anim", data = {lib = "amb@code_human_in_car_idles@low@ps@idle_d", anim = "idle_k", repet = 1}},
	    {label = "Spy ur bilen", type = "anim", data = {lib = "oddjobs@taxi@tie", anim = "vomit_outside"}},
	    {label = "Ge avsugning", type = "anim", data = {lib = "oddjobs@towing", anim = "f_blow_job_loop", repet = 1}},
	    {label = "Ge avsugning", type = "anim", data = {lib = "mini@prostitutes@sexnorm_veh", anim = "bj_loop_prostitute", repet = 1}},
	    {label = "Ha sex", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_female", repet = 1}},
		}
	},
	
	{
		name  = 'festives',
		label = 'Festligheter',
		items = {
	    {label = "Spela musik", type = "scenario", data = {anim = "WORLD_HUMAN_MUSICIAN"}},
	    {label = "Dj", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@dj", anim = "dj", repet = 1}},
	    {label = "Grog", type = "scenario", data = {anim = "WORLD_HUMAN_DRINKING"}},
	    {label = "Ölfest", type = "scenario", data = {anim = "WORLD_HUMAN_PARTYING"}},
	    {label = "Luftgitarr", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@air_guitar", anim = "air_guitar"}},
	    {label = "Luftjucka", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@air_shagging", anim = "air_shagging"}},
	    {label = "Rock'n'roll", type = "anim", data = {lib = "mp_player_int_upperrock", anim = "mp_player_int_rock", repet = 1}},
	    {label = "Rök en joint", type = "scenario", data = {anim = "WORLD_HUMAN_SMOKING_POT"}},
	    {label = "Helt ute och cykla", type = "anim", data = {lib = "amb@world_human_bum_standing@drunk@idle_a", anim = "idle_a"}},
	    {label = "Sten, sax, påse", type = "anim", data = {lib = "amb@code_human_in_car_mp_actions@fist_pump@low@ps@base", anim = "idle_a", repet=1}},
	    {label = " - Sten", type = "anim", data = {lib = "amb@code_human_in_car_mp_actions@fist_pump@low@ps@base", anim = "enter", repet=2}},
	    {label = " - Sax", type = "anim", data = {lib = "amb@code_human_in_car_mp_actions@v_sign@low@ps@base", anim = "idle_a", repet=1}},
	    {label = " - Påse", type = "anim", data = {lib = "anim@mp_player_intupperwave", anim = "idle_a_fp", repet=2}},
	    {label = "Dans 1 (Krograggaren)", type = "anim", data = {lib = "rcmnigel1bnmt_1b", anim = "dance_loop_tyler", repet = 1}},
	    {label = "Dans 2 (Skogsdansen)", type = "anim", data = {lib = "special_ped@mountain_dancer@monologue_1@monologue_1a", anim = "mtn_dnc_if_you_want_to_get_to_heaven", repet = 1}},
	    {label = "Dans 3 (Smygdansare)", type = "anim", data = {lib = "amb@code_human_in_car_mp_actions@dance@bodhi@rds@base", anim = "idle_b", repet=1}},
	    {label = "Dans 4 (Taggad Festnisse)", type = "anim", data = {lib = "anim@mp_player_intupperair_synth", anim = "idle_a_fp", repet=1}},
	    {label = "Dans 5 (Shake it!)", type = "anim", data = {lib = "missfam2leadinoutmcs3", anim = "onboat_leadin_tracy", repet = 1}},
	    {label = "Dans 6 (Swing)", type = "anim", data = {lib = "misschinese2_crystalmazemcs1_ig", anim = "dance_loop_tao", repet = 1}},
	    {label = "Dans 7 (Mjukisdansen)", type = "scenario", data = {anim = "WORLD_HUMAN_STRIP_WATCH_STAND"}},
	    {label = "Dans 8 (Bäst på krogen)", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj@", anim = "hi_dance_facedj_15_v2_male^2", repet = 1}},
		}
	},

	{
		name  = 'greetings',
		label = 'Hälsningar',
		items = {
	    {label = "Tjena!", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_hello"}},
	    {label = "Skaka hand", type = "anim", data = {lib = "mp_common", anim = "givetake1_a"}},
	    {label = "Slå händerna samman", type = "anim", data = {lib = "mp_ped_interaction", anim = "handshake_guy_a"}},
	    {label = "Skaka hand samt krama", type = "anim", data = {lib = "mp_ped_interaction", anim = "hugs_guy_a"}},
	    {label = "Militärhälsing", type = "anim", data = {lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute", repet = 1}},
	    {label = "Boop!", type = "anim", data = {lib = "anim@mp_radio@medium_apment", anim = "action_a_kitchen"}},
	    {label = "Gangsta", type = "anim", data = {lib = "missfbi3_sniping", anim = "dance_m_default"}},
		}
	},

	{
	    name  = 'sports',
		label = 'Sport/Träning',
		items = {
	    {label = "Flexar", type = "anim", data = {lib = "amb@world_human_muscle_flex@arms_at_side@base", anim = "base"}},
	    {label = "Pumpa stång", type = "scenario", data = {anim = "world_human_muscle_free_weights"}},
	    {label = "Armhävningar", type = "anim", data = {lib = "amb@world_human_push_ups@male@base", anim = "base", repet = 1}},
	    {label = "Sit-ups", type = "anim", data = {lib = "amb@world_human_sit_ups@male@base", anim = "base", repet = 1}},
	    {label = "Yoga", type = "anim", data = {lib = "amb@world_human_yoga@male@base", anim = "base_a", repet = 1}},
	    {label = "Pullups på stång", type = "scenario", data = {anim = "prop_human_muscle_chin_ups"}},
	    {label = "Bänkpress", type = "scenario", data = {anim = "prop_human_seat_muscle_bench_press"}},
		{label = "Fyfan vad slut jag är!", type = "anim", data = {lib = "amb@world_human_jog_standing@male@idle_b", anim = "idle_d"}},
		{label = "Bakåtvolt", type = "anim", data = {lib = "anim@arena@celeb@flat@solo@no_props@", anim = "flip_a_player_a", repet = 1}},
	    {label = "Tagga inför hopp", type = "anim", data = {lib = "oddjobs@bailbond_mountain", anim = "base_jump_idle", repet = 1}},
	    {label = " - Hoppa", type = "anim", data = {lib = "oddjobs@bailbond_mountain", anim = "base_jump_spot", ragdoll = 1}},
	    }
	},
	
	{   
		name  = 'work',
		label = 'Jobbrelaterat',
		items = {
	    {label = "Anteckning", type = "scenario", data = {anim = "code_human_medic_time_of_death"}},
	    {label = "Skrivblock", type = "scenario", data = {anim = "WORLD_HUMAN_CLIPBOARD"}},
	    {label = "Polis: Brottsplatsundersökning", type = "anim", data = {lib = "amb@code_human_police_investigate@idle_b", anim = "idle_f"}},
	    {label = "Polis: Prata i radio", type = "anim", data = {lib = "random@arrests", anim = "generic_radio_chatter"}},
	    {label = "Polis: Trafikangivelse", type = "scenario", data = {anim = "WORLD_HUMAN_CAR_PARK_ATTENDANT"}},
	    {label = "Polis: Kikare", type = "scenario", data = {anim = "WORLD_HUMAN_BINOCULARS"}},
		{label = "Polis: Sysslolös", type = "scenario", data = {anim = "world_human_cop_idles"}},
	    {label = "Sjukvård: Undersöka", type = "scenario", data = {anim = "CODE_HUMAN_MEDIC_KNEEL"}},
	    {label = "Sjukvård: Bröstpump", type = "anim", data = {lib = "mini@cpr@char_a@cpr_str", anim = "cpr_pumpchest", repet = 1}},
	    {label = "Sjukvård: Mun mot mun", type = "anim", data = {lib = "mini@cpr@char_a@cpr_str", anim = "cpr_kol", repet = 1}},
	    {label = "Patient: Ligg på rygg", type = "anim", data = {lib = "anim@gangops@morgue@table@", anim = "ko_front", repet = 1}},
	    --{label = "Mekaniker: Meka under bil", type = "scenario", data = {anim = "world_human_vehicle_mechanic"}},
	    {label = "Mekaniker: Meka motor", type = "anim", data = {lib = "mini@repair", anim = "fixing_a_ped", repet = 1}},
	    {label = "Mekaniker: Svetsa", type = "scenario", data = {anim = "world_human_welding"}},
	    {label = "Trädgård: Gräva med liten spade", type = "scenario", data = {anim = "world_human_gardener_plant"}},
		{label = "Trädgård: Lövblåsare", type = "scenario", data = {anim = "WORLD_HUMAN_GARDENER_LEAF_BLOWER"}},
		{label = "Städning: Borsta", type = "scenario", data = {anim = "WORLD_HUMAN_JANITOR"}},
		{label = "Städning: Putsa", type = "scenario", data = {anim = "WORLD_HUMAN_MAID_CLEAN"}},
	    {label = "Butiksbiträde: Ge ölback", type = "anim", data = {lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper"}},
	    {label = "Bartender: Hälla upp öl", type = "anim", data = {lib = "mini@drinking", anim = "shots_barman_b"}},
	    {label = "Journalist: Tag kort", type = "scenario", data = {anim = "WORLD_HUMAN_PAPARAZZI"}},
	    {label = "Snickra", type = "scenario", data = {anim = "WORLD_HUMAN_HAMMERING"}},
	    {label = "Clown: Leka staty", type = "scenario", data = {anim = "WORLD_HUMAN_HUMAN_STATUE"}},
		{label = "Borra ett hål i gatan", type = "scenario", data = {anim = "WORLD_HUMAN_CONST_DRILL"}},
	    {label = "Uteliggare: Tigg med skylt", type = "scenario", data = {anim = "WORLD_HUMAN_BUM_FREEWAY"}},
		{label = "Uteliggare: Tvätta sig i en vattenpöl", type = "scenario", data = {anim = "WORLD_HUMAN_BUM_WASH"}},
		{label = "Uteliggare: Ta en tupplur", type = "scenario", data = {anim = "WORLD_HUMAN_BUM_SLUMPED"}},
		{label = "Uteliggare: Leta i sopor", type = "scenario", data = {anim = "PROP_HUMAN_BUM_BIN"}},
	    {label = "Hallå här är jag!", type = "anim", data = {lib = "misscarsteal2", anim = "come_here_idle_c"}},
	    {label = "Hacka dator", type = "anim", data = {lib = "mp_prison_break", anim = "hack_loop", repet = 1}},
	    {label = "Fiskar", type = "scenario", data = {anim = "world_human_stand_fishing"}},
	    {label = "Bouncer", type = "anim", data = {lib = "mini@strip_club@idles@bouncer@base", anim = "base", repet = 1}},
	    {label = "Putta", type = "anim", data = {lib = "rcmpaparazzo_2", anim = "shag_loop_a", repet = 1}},
		}
	},

	{
		name  = 'humors',
		label = 'Humor',
		items = {
	    {label = "Klappa", type = "scenario", data = {anim = "WORLD_HUMAN_CHEERING"}},
	    {label = "Tummenupp!", type = "anim", data = {lib = "mp_action", anim = "thanks_male_06"}},
	    {label = "Snyggt där!", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_point"}},
	    {label = "Följ med!", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_come_here_soft"}}, 
	    {label = "Kom igen då!", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on"}},
	    {label = "Pratar du med mig?", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_me"}},
	    {label = "I helvete heller!", type = "anim", data = {lib = "anim@am_hold_up@male", anim = "shoplift_high"}},
	  --  {label = "Je suis dans la merde", type = "scenario", data = {lib = "amb@world_human_bum_standing@depressed@idle_a", anim = "idle_a"}},
	    {label = "Vad gör jag här...", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm"}},
	    {label = "Lugna ner dig ", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_easy_now"}},
	    {label = "Uhm, ok, helvete!", type = "anim", data = {lib = "oddjobs@assassinate@multi@", anim = "react_big_variations_a"}},
	    {label = "Uppvärmning (slagsmål)", type = "anim", data = {lib = "anim@deathmatch_intros@unarmed", anim = "intro_male_unarmed_e"}},
	    {label = "Det är inte möjligt!", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_damn"}},
	    {label = "Krama", type = "anim", data = {lib = "mp_ped_interaction", anim = "kisses_guy_a"}},
	    {label = "Far åt helvete", type = "anim", data = {lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter"}},
	    {label = "Dra en skinntarsan", type = "anim", data = {lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01", repet = 1}},
	    {label = "Självmord: Pistol", type = "anim", data = {lib = "mp_suicide", anim = "pistol"}},
	    {label = "Självmord: Piller", type = "anim", data = {lib = "mp_suicide", anim = "pill"}},
	    {label = "Förbannad", type = "anim", data = {lib = "oddjobs@towingangryidle_a", anim = "idle_b"}},
	    {label = "Finger", type = "anim", data = {lib = "anim@mp_player_intselfiethe_bird", anim = "idle_a"}},
	    {label = "Peta näsan", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@nose_pick", anim = "nose_pick"}},
	    {label = "Gråter", type = "anim", data = {lib = "switch@trevor@floyd_crying", anim = "console_wasnt_fun_end_loop_floyd", repet = 49}},
	    {label = "Släng kyss♥", type = "anim", data = {lib = "anim@mp_player_intselfieblow_kiss", anim = "exit"}},

		}
	},

	{
		name  = 'misc',
		label = 'Diverse',
		items = {
	    {label = "Sitt på marken", type = "anim", data = {lib = "anim@heists@fleeca_bank@ig_7_jetski_owner", anim = "owner_idle", repet = 1}},
	    {label = "Sitt mot en vägg", type = "scenario", data = {anim = "WORLD_HUMAN_STUPOR"}},
	    --{label = "Sitt på marken", type = "scenario", data = {anim = "WORLD_HUMAN_PICNIC"}},
	    {label = "Sitta och pilla på telefon", type = "anim", data = {lib = "anim@heists@prison_heistunfinished_biztarget_idle", anim = "target_idle", repet = 1}},
	    {label = "Sitt på bänk, tänker på livet", type = "anim", data = {lib = "switch@michael@parkbench_smoke_ranger", anim = "parkbench_smoke_ranger_loop", repet = 1}},
	    {label = "Sitt på bänk, avslappnad", type = "anim", data = {lib = "switch@michael@on_sofa", anim = "base_michael", repet = 1}},
	    {label = ": Med kaffe", type = "scenario", data = {anim = "prop_human_seat_bench_drink"}},
	    {label = ": Med öl", type = "scenario", data = {anim = "prop_human_seat_bench_drink_beer"}},
	    {label = ": Med Mat", type = "scenario", data = {anim = "prop_human_seat_bench_food"}},	
	    {label = "Luta dig mot en vägg", type = "anim", data = {lib = "amb@world_human_leaning@male@wall@back@legs_crossed@base", anim = "base", repet = 1}},
	    {label = "Luta dig mot en vägg -slumpad", type = "scenario", data = {anim = "WORLD_HUMAN_LEANING"}},
	    {label = "Häng över räcke", type = "scenario", data = {anim = "prop_human_bum_shopping_cart"}},
	    {label = "Luta dig mot ett räcke", type = "anim", data = {lib = "anim@amb@yacht@rail@standing@male@variant_01@", anim = "base", repet = 1}},
	    {label = "Luta dig mot en bardisk", type = "anim", data = {lib = "anim@amb@yacht@rail@standing@male@variant_02@", anim = "base", repet = 1}},
	    --{label = "Luta åt vänster", type = "anim", data = {lib = "missfam6leadinoutfam_6_mcs_2", anim = "_leadin_loop_lazlow", repet = 1}},
	    --{label = "Luta åt höger", type = "anim", data = {lib = "missfam6leadinoutfam_6_mcs_2", anim = "_leadin_loop_tracy", repet = 1}},
	    {label = "Ligga på rygg", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE_BACK"}},
	    {label = "Ligga på mage", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE"}},
	    {label = "Drick en kopp kaffe", type = "scenario", data = {anim = "WORLD_HUMAN_AA_COFFEE"}},
	    {label = "Grilla", type = "scenario", data = {anim = "PROP_HUMAN_BBQ"}},
	    {label = "Titanic", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_bj_to_prop_female", repet = 1}},
	    {label = "Händerna upp i luften", type = "anim", data = {lib = "anim@mp_rollarcoaster", anim = "hands_up_idle_a_player_one", repet = 49}},
	    {label = "Ta en selfie", type = "scenario", data = {anim = "world_human_tourist_mobile"}},
	    {label = "Filma med telefonen", type = "scenario", data = {anim = "WORLD_HUMAN_MOBILE_FILM_SHOCKING"}},
	    {label = "Tjuvlyssna (Genom vägg)", type = "anim", data = {lib = "mini@safe_cracking", anim = "idle_base", repet = 1}}, 
	    {label = "Pilla med mobilen", type = "scenario", data = {anim = "world_human_stand_mobile"}},
	    {label = "Vars fan är jag? (karta)", type = "scenario", data = {anim = "world_human_tourist_map"}},
	    {label = "Ont i magen(liggandes)", type = "anim", data = {lib = "combat@damage@writheidle_a", anim = "writhe_idle_b", repet = 1}},
	    {label = "Kissnödig", type = "anim", data = {lib = "amb@world_human_prostitute@cokehead@base", anim = "base", repet=1}},
	    {label = "Nervös", type = "anim", data = {lib = "switch@michael@parkbench_smoke_ranger", anim = "ranger_nervous_loop", repet = 1}},
	    {label = "Armarna i kors", type = "anim", data = {lib = "amb@world_human_hang_out_street@female_arms_crossed@base", anim = "base", repet = 17}},
		}
	},

	{
		name  = 'attitudem',
		label = 'Gångstilar',
		items = {
	    {label = "Normal man", type = "attitude", data = {lib = "move_m@generic", anim = "move_m@generic"}},
	    {label = "Normal kvinna", type = "attitude", data = {lib = "move_f@generic", anim = "move_f@generic"}},
	    --{label = "Normal man", type = "attitude", data = {lib = "move_m@confident", anim = "move_m@confident"}},
	    --{label = "Normal kvinna", type = "attitude", data = {lib = "move_f@heels@c", anim = "move_f@heels@c"}},
	    {label = "Deprimerad man", type = "attitude", data = {lib = "move_m@depressed@a", anim = "move_m@depressed@a"}},
	    {label = "Deprimerad kvinna", type = "attitude", data = {lib = "move_f@depressed@a", anim = "move_f@depressed@a"}},
	    {label = "Business", type = "attitude", data = {lib = "move_m@business@a", anim = "move_m@business@a"}},
	    {label = "Bestämd", type = "attitude", data = {lib = "move_m@brave@a", anim = "move_m@brave@a"}},
	    {label = "Lugn", type = "attitude", data = {lib = "move_m@casual@a", anim = "move_m@casual@a"}},
	    {label = "Tung person", type = "attitude", data = {lib = "move_m@fat@a", anim = "move_m@fat@a"}},
	    {label = "Hipster", type = "attitude", data = {lib = "move_m@hipster@a", anim = "move_m@hipster@a"}},
	    {label = "Skadad", type = "attitude", data = {lib = "move_m@injured", anim = "move_m@injured"}},
	    {label = "Osäker snabb", type = "attitude", data = {lib = "move_m@hurry@a", anim = "move_m@hurry@a"}},
	    {label = "Hobo", type = "attitude", data = {lib = "move_m@hobo@a", anim = "move_m@hobo@a"}},
	    {label = "Ledsen", type = "attitude", data = {lib = "move_m@sad@a", anim = "move_m@sad@a"}},
	    {label = "Biff", type = "attitude", data = {lib = "move_m@muscle@a", anim = "move_m@muscle@a"}},
	    {label = "Chokad", type = "attitude", data = {lib = "move_m@shocked@a", anim = "move_m@shocked@a"}},
	    {label = "Avvikande", type = "attitude", data = {lib = "move_m@shadyped@a", anim = "move_m@shadyped@a"}},
	    {label = "Utmattad", type = "attitude", data = {lib = "move_m@buzzed", anim = "move_m@buzzed"}},
	    {label = "Bestämd snabb", type = "attitude", data = {lib = "move_m@hurry_butch@a", anim = "move_m@hurry_butch@a"}},
	    {label = "Hippie", type = "attitude", data = {lib = "move_m@money", anim = "move_m@money"}},
	    {label = "Smygaktig springstil", type = "attitude", data = {lib = "move_m@quick", anim = "move_m@quick"}},
	    {label = "Tudelu", type = "attitude", data = {lib = "move_f@maneater", anim = "move_f@maneater"}},
	    {label = "Två väskor och högklackat", type = "attitude", data = {lib = "move_f@sassy", anim = "move_f@sassy"}},	
	    {label = "Arrogant", type = "attitude", data = {lib = "move_f@arrogant@a", anim = "move_f@arrogant@a"}},
	    {label = "Getto", type = "attitude", data = {lib = "move_m@gangster@generic", anim = "move_m@gangster@generic"}},
	    {label = "Full", type = "attitude", data = {lib = "move_m@drunk@slightlydrunk", anim = "move_m@drunk@slightlydrunk"}},
	    {label = "Fullare", type = "attitude", data = {lib = "move_m@drunk@moderatedrunk", anim = "move_m@drunk@moderatedrunk"}},
	    {label = "Fullast", type = "attitude", data = {lib = "move_m@drunk@verydrunk", anim = "move_m@drunk@verydrunk"}},
	    {label = "Jag kan också springa", type = "attitude", data = {lib = "move_m@alien", anim = "move_m@alien"}},
	     {label = "Kryp", type = "anim", data = {lib = "move_injured_ground", anim = "front_loop", repet = 33}},
	     {label = "Kryp 2", type = "anim", data = {lib = "move_crawl", anim = "onfront_fwd", repet = 1}},
		}
	},
	{
		name  = 'porn',
		label = 'PEGI 21',
		items = {
	    {label = "Klias på bollarna", type = "anim", data = {lib = "mp_player_int_uppergrab_crotch", anim = "mp_player_int_grab_crotch", repet = 1}},
	    {label = "Vink vink", type = "anim", data = {lib = "mini@strip_club@idles@stripper", anim = "stripper_idle_02", repet = 1}},
	    {label = "Cigarette (Pose)", type = "scenario", data = {anim = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}},
	    {label = "Bröstfokus", type = "anim", data = {lib = "mini@strip_club@backroom@", anim = "stripper_b_backroom_idle_b", repet = 1}},
	    {label = "Strip Tease 1", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", anim = "ld_girl_a_song_a_p1_f", repet = 1}},
	    {label = "Strip Tease 2", type = "anim", data = {lib = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2", repet = 1}},
	    {label = "Stip Tease 3", type = "anim", data = {lib = "mini@strip_club@private_dance@part3", anim = "priv_dance_p3", repet = 1}},
	    {label = "Lapdance 1", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", anim = "ld_girl_a_song_a_p1_f_face", repet = 1}},
	    {label = "Ta", type = "anim", data = {lib = "rcmpaparazzo_2", anim = "shag_loop_poppy", repet = 1}},
	    {label = "Ge", type = "anim", data = {lib = "rcmpaparazzo_2", anim = "shag_loop_a", repet = 1}},
	    {label = "Kolla på strippor", type = "anim", data = {lib = "mini@strip_club@leaning@base", anim = "base", repet = 1}},
		}
	},

}