local QBCore = exports['qb-core']:GetCoreObject()
local ClawMachineTargets = false
local isPlaying = false

local function RemoveClawMachines()
    if ClawMachineTargets then
        exports['qb-target']:RemoveTargetModel(Config.Machines)
        ClawMachineTargets = false
    end
end

local function StartClawMachine()
    QBCore.Functions.Progressbar('claw_machine', "Putting in Coins...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim_casino_a@amb@casino@games@arcadecabinet@maleright",
        anim = "insert_coins",
        flags = 49
    }, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"type2"})
        local randomitem = math.random(1,2)

        if Config.Minigame.Game == 'ps-circle' then
            exports['ps-ui']:Circle(function(success)
                if success then
                    TriggerServerEvent('rs-clawmachine:GetPrize', "high")
                    ClearPedTasks(PlayerPedId())
                elseif not success and randomitem == 1 then
                    TriggerServerEvent('rs-clawmachine:GetPrize', "low")
                    ClearPedTasks(PlayerPedId())
                elseif not success and randomitem == 2 then
                    TriggerServerEvent('rs-clawmachine:GetPrize', "mid")
                    ClearPedTasks(PlayerPedId())
                end
            end, Config.Minigame.PSCircle.circles, Config.Minigame.PSCircle.time)
            isPlaying = false
        elseif Config.Minigame.Game == 'qb-lock' then
            local success = exports['qb-lock']:StartLockPickCircle(Config.Minigame.QBLock.circles, Config.Minigame.QBLock.time, success)

            if success then
                TriggerServerEvent('rs-clawmachine:GetPrize', "high")
                ClearPedTasks(PlayerPedId())
            elseif not success and randomitem == 1 then
                TriggerServerEvent('rs-clawmachine:GetPrize', "low")
                ClearPedTasks(PlayerPedId())
            elseif not success and randomitem == 2 then
                TriggerServerEvent('rs-clawmachine:GetPrize', "mid")
                ClearPedTasks(PlayerPedId())
            end
            isPlaying = false
        end
    end, function()
        ClearPedTasks(PlayerPedId())
        isPlaying = false
    end)
end

local function ClawMachines()
    if Config.Target then
        if not ClawMachineTargets then
            exports['qb-target']:AddTargetModel(Config.Machines, {
                options = {
                    {
                        icon = 'fas fa-coins',
                        label = 'Claw Machine: $'..Config.Price,
                        targeticon = 'fas fa-coins',
                        action = function()
                            StartClawMachine()
                        end,
                    }
                },
                distance = 2.5
            })
        end
        ClawMachineTargets = true
    else
        CreateThread(function()
            while true do

                local sleep = 1000
                local PlayerCoords = GetEntityCoords(PlayerPedId())

                for i = 1, #Config.Machines do
                    local Machines = GetClosestObjectOfType(PlayerCoords, 1.0, GetHashKey(Config.Machines[i]), false, false, false)
                    local entity = nil

                    print(GetHashKey(Config.Machines[i]))

                    if DoesEntityExist(Machines) then
                        entity = Machines
                        if not isPlaying then
                            sleep = 200
                            exports['qb-core']:DrawText('[E] | Claw Machine')
                            if IsControlPressed(0, 38) then
                                StartClawMachine()
                                isPlaying = true
                            end
                        else
                            exports['qb-core']:HideText()
                        end
                        break
                    else
                        exports['qb-core']:HideText()
                    end
                end
                Wait(sleep)
            end
        end)
    end
end


---------------------------------------------------------------
--------------- CREATE / REMOVE TARGET ENTITY -----------------
---------------------------------------------------------------
AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    ClawMachines()
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    RemoveClawMachines()
    isPlaying = false
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    ClawMachines()
end)

AddEventHandler('QBCore:Client:OnPlayerUnloaded', function()
    RemoveClawMachines()
    isPlaying = false
end)