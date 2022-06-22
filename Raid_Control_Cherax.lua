g_lua.register()

notify = g_gui.add_toast
log = g_logger.log_info

local Slot = STATS.STAT_GET_INT(g_util.joaat("MPPLY_LAST_MP_CHAR"))

function better_yield(time)
    local t0 = os.time()
    while (os.time() - t0) < time do 
    g_util.yield() end
end

g_gui.add_toggle("misc_lua", "Cayo Bot (Silent Mode)", "You have to be MC or CEO and have to set your spawn point in Kosatka.", function(on)
    bot = on
    while bot do
        g_util.yield()
        if SCRIPT.GET_GLOBAL_I(2810701+1801) ~= 0 then

            stats()

            if not bot then break end

            SCRIPT.SET_GLOBAL_I(1575012, 10)
            SCRIPT.SET_GLOBAL_I(1574589, 1)

            better_yield(1)

			SCRIPT.SET_GLOBAL_I(1574589, 0)

            if not bot then break end

            better_yield(5)

            if not bot then break end

            while SCRIPT.GET_GLOBAL_I(2678391+1865) ~= 1 do
                better_yield(1)
                if not bot then break end
            end

            better_yield(1)

            if not bot then break end

            local player = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), player.x + 2.5799560547, player.y + 2.6019897461, player.z + 3.598968505859)

            better_yield(5)

            if not bot then break end

            SCRIPT.SET_LOCAL_I(g_util.joaat("heist_island_planning"), 1428, 2)

            better_yield(5)

            if not bot then break end

            while SCRIPT.GET_LOCAL_I(g_util.joaat("heist_island_planning"), 1428) ~= 4 do
                better_yield(1)
                if not bot then break end
            end

            menu1()

            if not bot then break end

            better_yield(5)

            while SCRIPT.GET_LOCAL_I(g_util.joaat("heist_island_planning"), 986 + 1 + 7 * 9) ~= 1 do
                better_yield(1)
                if not bot then break end
            end

            better_yield(1)

            menu2b(true)

            better_yield(1)

            if not bot then 
                break 
            end

            while SCRIPT.GET_LOCAL_I(g_util.joaat("fm_mission_controller_2020"), 2803) ~= 1 do
                better_yield(1)
                if not bot then break end
            end

            better_yield(1)

            if not bot then break end
            while SCRIPT.GET_GLOBAL_I(2678391+1865) ~= 1 do
                better_yield(1)
                if not bot then break end
            end

            missionb()

            if not bot then break end
            notify("Next Heist: 16 Minutes")
            log("Next Heist: 16 Minutes")
            better_yield(360)
            notify("Next Heist: 10 Minutes")
            log("Next Heist: 10 Minutes")
            better_yield(300)
            if not bot then break end
            notify("Next Heist: 5 Minutes")
            log("Next Heist: 5 Minutes")
            better_yield(300)
            if not bot then break end
            notify("New Heist is Starting!")
            log("New Heist is Starting!")
            g_util.yield()
        end
    end
end)

g_gui.add_toggle("misc_lua", "Cayo Bot (Aggressive Mode)", "You have to be MC or CEO and have to set your spawn point in Kosatka", function(on)
    bot = on
    while bot do
        g_util.yield()
        if SCRIPT.GET_GLOBAL_I(2810701+1801) ~= 0 then

            stats()

            if not bot then break end

            SCRIPT.SET_GLOBAL_I(1575012, 10)
            SCRIPT.SET_GLOBAL_I(1574589, 1)

            better_yield(1)

			SCRIPT.SET_GLOBAL_I(1574589, 0)

            if not bot then break end

            better_yield(5)

            if not bot then break end

            while SCRIPT.GET_GLOBAL_I(2678391+1865) ~= 1 do
                better_yield(1)
                if not bot then break end
            end

            better_yield(1)

            if not bot then break end

            local player = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), player.x + 2.5799560547, player.y + 2.6019897461, player.z + 3.598968505859)

            better_yield(5)

            if not bot then break end

            SCRIPT.SET_LOCAL_I(g_util.joaat("heist_island_planning"), 1428, 2)

            better_yield(5)

            if not bot then break end

            while SCRIPT.GET_LOCAL_I(g_util.joaat("heist_island_planning"), 1428) ~= 4 do
                better_yield(1)
                if not bot then break end
            end

            menu1()

            if not bot then break end

            better_yield(5)

            while SCRIPT.GET_LOCAL_I(g_util.joaat("heist_island_planning"), 986 + 1 + 7 * 9) ~= 1 do
                better_yield(1)
                if not bot then break end
            end

            better_yield(1)

            menu2(true)

            better_yield(1)

            if not bot then break end

            while SCRIPT.GET_LOCAL_I(g_util.joaat("fm_mission_controller_2020"), 2803) ~= 1 do
                better_yield(1)
                if not bot then break end
            end

            better_yield(1)

            if not bot then break end
            while SCRIPT.GET_GLOBAL_I(2678391+1865) ~= 1 do
                better_yield(1)
                if not bot then break end
            end

            mission()

            if not bot then break end
            notify("Next Heist: 16 Minutes")
            log("Next Heist: 16 Minutes")
            better_yield(360)
            notify("Next Heist: 10 Minutes")
            log("Next Heist: 10 Minutes")
            better_yield(300)
            if not bot then break end
            notify("Next Heist: 5 Minutes")
            log("Next Heist: 5 Minutes")
            better_yield(300)
            if not bot then break end
            notify("New Heist is Starting!")
            log("New Heist is Starting!")
            g_util.yield()
        end
    end
end)

function menu1()
    CONTROL.SET_CONTROL_NORMAL(0, 206, 1)
    better_yield(1)
    CONTROL.SET_CONTROL_NORMAL(0, 206, 1)
    better_yield(1)
    CONTROL.SET_CONTROL_NORMAL(0, 218, 1)
    better_yield(1)
    CONTROL.SET_CONTROL_NORMAL(0, 201, 1)
    
    while SCRIPT.GET_GLOBAL_I(1837281) ~= 1 do 
        better_yield(1) 
    end

    better_yield(1)
    CONTROL.SET_CONTROL_NORMAL(0, 188, 1)
    better_yield(1)
    CONTROL.SET_CONTROL_NORMAL(0, 201, 1)
    better_yield(1)
    CONTROL.SET_CONTROL_NORMAL(0, 188, 1)
    better_yield(1)
    CONTROL.SET_CONTROL_NORMAL(0, 201, 1)
    better_yield(1)
    CONTROL.SET_CONTROL_NORMAL(2, 201, 1)
    better_yield(1)
end

function menu2(bool)
    CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 205, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 206, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 205, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 206, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 205, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 206, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 205, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 206, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 205, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 206, 1) 
	better_yield(1)

	SCRIPT.SET_GLOBAL_I(1973525+823+56+1, 100)
	SCRIPT.SET_GLOBAL_I(1973525+823+56+2, 0)
	SCRIPT.SET_GLOBAL_I(1973525+823+56+3, 0)
	SCRIPT.SET_GLOBAL_I(1973525+823+56+4, 0)
	
	if bool then
	SCRIPT.SET_GLOBAL_I(1973525+823+56+1, 150)
	SCRIPT.SET_GLOBAL_I(1973525+823+56+2, 150)
	SCRIPT.SET_GLOBAL_I(1973525+823+56+3, 150)
	SCRIPT.SET_GLOBAL_I(1973525+823+56+4, 150)
	end

	CONTROL.SET_CONTROL_NORMAL(0, 218, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)

	while SCRIPT.GET_GLOBAL_I(1835497) ~= 1 do
		better_yield(1)
	end

	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 188, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
end

function mission()
    better_yield(5)

    CUTSCENE.STOP_CUTSCENE_IMMEDIATELY()
	
	better_yield(5)
	
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), 4979.253,-5709.971,20.374)
	better_yield(2)
	
	CONTROL.SET_CONTROL_NORMAL(0, 51, 1) 
	
	better_yield(11)
	
	CUTSCENE.STOP_CUTSCENE_IMMEDIATELY()

	better_yield(5)

    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), 5010.407,-5755.905,15.55)

	better_yield(2)

    while SCRIPT.GET_LOCAL_I(g_util.joaat("fm_mission_controller_2020"), 28268) ~= 0 do 
        better_yield(1) 
    end

    better_yield(1)

	SCRIPT.SET_LOCAL_F(g_util.joaat("fm_mission_controller_2020"), 28269+3, 100)

	SCRIPT.SET_LOCAL_I(g_util.joaat("fm_mission_controller_2020"), 28268, 2)

	while SCRIPT.GET_LOCAL_I(g_util.joaat("fm_mission_controller_2020"), 28268) ~= 0 do
		better_yield(1)
	end

	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), 4992.341, -5719.833, 19.87)
	better_yield(2)

	CONTROL.SET_CONTROL_NORMAL(0, 51, 1) 

	better_yield(25)

	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), 4397.290, -4380.540, 8.70)

	better_yield(2)

	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), 7999.764, -5749.864, 2.84)

	better_yield(1)

	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), 4397.290, -4380.540, 8.70)

	better_yield(1)
end

function menu2b(bool)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 205, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 206, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
    better_yield(1)
    CONTROL.SET_CONTROL_NORMAL(0, 187, 1)
	better_yield(1)
    CONTROL.SET_CONTROL_NORMAL(0, 187, 1)
	better_yield(1)
    CONTROL.SET_CONTROL_NORMAL(0, 187, 1)
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 205, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 206, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 205, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 206, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 205, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 206, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 187, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 205, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 206, 1) 
	better_yield(1)

	SCRIPT.SET_GLOBAL_I(1973525+823+56+1, 100)
	SCRIPT.SET_GLOBAL_I(1973525+823+56+2, 0)
	SCRIPT.SET_GLOBAL_I(1973525+823+56+3, 0)
	SCRIPT.SET_GLOBAL_I(1973525+823+56+4, 0)
	
	if bool then
	SCRIPT.SET_GLOBAL_I(1973525+823+56+1, 150)
	SCRIPT.SET_GLOBAL_I(1973525+823+56+2, 150)
	SCRIPT.SET_GLOBAL_I(1973525+823+56+3, 150)
	SCRIPT.SET_GLOBAL_I(1973525+823+56+4, 150)
	end

	CONTROL.SET_CONTROL_NORMAL(0, 218, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)

	while SCRIPT.GET_GLOBAL_I(1835497) ~= 1 do
		better_yield(1)
	end

	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 188, 1) 
	better_yield(1)
	CONTROL.SET_CONTROL_NORMAL(0, 201, 1) 
	better_yield(1)
end

function missionb()
    CUTSCENE.STOP_CUTSCENE_IMMEDIATELY()

    better_yield(3)

    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), 5044.726, -5816.164, -11.213)

    better_yield(1)

    local grill = 2997331308
    for i = 0, POOL.GET_OBJECT_COUNT() do
        local door = POOL.GET_OBJECT_AT_INDEX(i)
        local entry = ENTITY.GET_ENTITY_MODEL(door)
        if entry == grill then
            if NETWORK.HAS_CONTROL_OF_ENTITY(door) then
                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(door, true, true)
                ENTITY.DELETE_ENTITY(door)
            end
        end
    end

    better_yield(1)

    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), 5054.630, -5771.519, -4.807)

    better_yield(4)

    CONTROL.SET_CONTROL_NORMAL(0, 51, 1)

    better_yield(27)

    for i = 0, POOL.GET_PED_COUNT() do
        local ped = POOL.GET_PED_AT_INDEX(i)
        if not PED.IS_PED_A_PLAYER(ped) then
            PED.SET_PED_HEALTH(ped, 0)
            SYSTEM.WAIT(50)
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ped, true, true)
            ENTITY.DELETE_ENTITY(ped)
        end
    end

    better_yield(1)

    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), 5006.896, -5755.963, 15.487)

    better_yield(1)

	SCRIPT.SET_LOCAL_F(g_util.joaat("fm_mission_controller_2020"), 28269+3, 100)

	SCRIPT.SET_LOCAL_I(g_util.joaat("fm_mission_controller_2020"), 28268, 2)

	while SCRIPT.GET_LOCAL_I(g_util.joaat("fm_mission_controller_2020"), 28268) ~= 0 do
		better_yield(1)
	end

    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), 4992.341, -5719.833, 19.87)

    for i = 0, POOL.GET_PED_COUNT() do
        local ped = POOL.GET_PED_AT_INDEX(i)
        if not PED.IS_PED_A_PLAYER(ped) then
            PED.SET_PED_HEALTH(ped, 0)
            SYSTEM.WAIT(50)
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ped, true, true)
            ENTITY.DELETE_ENTITY(ped)
        end
    end

    better_yield(2)

    CONTROL.SET_CONTROL_NORMAL(0, 51, 1)

    better_yield(25)

    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), 4397.290, -4380.540, 8.70)

    better_yield(2)

    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), 7999.764, -5749.864, 2.84)

    better_yield(1)

    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), 4397.290, -4380.540, 8.70)

    better_yield(1)
end

function stats()
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_PROSTITUTES_FREQUENTE"), 100, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4CNF_BS_GEN"), 131071, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4CNF_BS_ENTR"), 63, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4CNF_BS_ABIL"), 63, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4CNF_WEAPONS"), 5, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4CNF_WEP_DISRP"), 3, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4CNF_ARM_DISRP"), 3, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4CNF_HEL_DISRP"), 3, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4CNF_TARGET"), 5, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4CNF_TROJAN"), 2, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4CNF_APPROACH"), -1, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_CASH_I"), 0, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_CASH_C"), 0, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_WEED_I"), 0, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_WEED_C"), 0, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_COKE_I"), 0, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_COKE_C"), 0, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_GOLD_I"), -1, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_GOLD_C"), -1, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_PAINT"), -1, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4_PROGRESS"), 126823, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_CASH_I_SCOPED"), 0, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_CASH_C_SCOPED"), 0, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_WEED_I_SCOPED"), 0, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_WEED_C_SCOPED"), 0, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_COKE_I_SCOPED"), 0, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_COKE_C_SCOPED"), 0, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_GOLD_I_SCOPED"), -1, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_GOLD_C_SCOPED"), -1, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4LOOT_PAINT_SCOPED"), -1, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4_MISSIONS"), 65535, true)
    STATS.STAT_SET_INT(g_util.joaat("MP" .. Slot .. "_H4_PLAYTHROUGH_STATUS"), 40000, true)
end

while g_isRunning do
    SCRIPT.SET_GLOBAL_I(2714627+744, 0)
    g_util.yield(1000)
end
g_lua.unregister()