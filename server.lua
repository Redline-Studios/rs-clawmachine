local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('rs-clawmachine:GetPrize', function(tier)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local prizeChance = math.random(1,100)

    if Config.OwnedBusiness.enabled then
        exports['qb-management']:AddMoney(Config.OwnedBusiness.business, Config.Price)
    end

    if tier == "high" then
        local randomhighToy = math.random(1, #Config.Prizes.High)
        for i = 1, #Config.Prizes.High, 1 do
            if randomhighToy == i then
                if Config.PrizeChance >= prizeChance then
                    Player.Functions.RemoveMoney(Config.MoneyType, Config.Price, 'claw_machine')
                    Player.Functions.AddItem(Config.Prizes.High[i], 1)
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Prizes.High[i]], 'add')
                else
                    Player.Functions.RemoveMoney(Config.MoneyType, Config.Price, 'claw_machine')
                    TriggerClientEvent("QBCore:Notify", src, "The machine ate your money!", 'error')
                end
            end
        end
    elseif tier == "mid" then
        local randommidToy = math.random(1, #Config.Prizes.Mid)
        for i = 1, #Config.Prizes.Mid, 1 do
            if randommidToy == i then
                if Config.PrizeChance >= prizeChance then
                    Player.Functions.RemoveMoney(Config.MoneyType, Config.Price, 'claw_machine')
                    Player.Functions.AddItem(Config.Prizes.Mid[i], 1)
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Prizes.Mid[i]], 'add')
                else
                    Player.Functions.RemoveMoney(Config.MoneyType, Config.Price, 'claw_machine')
                    TriggerClientEvent("QBCore:Notify", src, "The machine ate your money!", 'error')
                end
            end
        end
    elseif tier == "low" then
        local randomlowToy = math.random(1, #Config.Prizes.Low)
        for i = 1, #Config.Prizes.Low, 1 do
            if randomlowToy == i then
                if Config.PrizeChance >= prizeChance then
                    Player.Functions.RemoveMoney(Config.MoneyType, Config.Price, 'claw_machine')
                    Player.Functions.AddItem(Config.Prizes.Low[i], 1)
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Prizes.Low[i]], 'add')
                else
                    Player.Functions.RemoveMoney(Config.MoneyType, Config.Price, 'claw_machine')
                    TriggerClientEvent("QBCore:Notify", src, "The machine ate your money!", 'error')
                end
            end
        end
    end
end)