Config = {}

-- GENERAL CONFIG --
Config.Target = true -- True = qb-target, false = Drawtext
Config.Machines = { -- Machine Props
    "ch_prop_arcade_claw_01a"
}

-- MINIGAME CONFIG --
Config.Minigame = {
    Game = 'ps-circle', -- Set minigame type ('ps-circle' or 'qb-lock')

    PSCircle = { -- PS-Circle Config
        circles = 25,
        time = math.random(10, 20)
    },
    QBLock = { -- QB-Lock Config
        circles = 25,
        time = math.random(10, 20)
    }
}

-- PAYMENTS CONFIG --
Config.Price = 25 -- Price to pay
Config.MoneyType = 'cash' -- Type of money for payment

-- CHANCE CONFIG --
Config.PrizeChance = 75 -- Percentage chance to win a prize, if not, the machine eats your money

-- OWNED BUSINESS CONFIG --
Config.OwnedBusiness = {
    enabled = true, -- If your arcade is an owned business, funds will go to their business account when they play
    business = 'cyber' -- Set this to the job name of the business if enabled = true
}

-- SPAWN CLAW MACHINES --
Config.SpawnMachines = {
    enable = true,
    locations = {
        [1] = vector4(299.60, -587.26, 43.28, 249.83)
    }
}

-- PRIZES CONFIG --
Config.Prizes = {
    Low = { -- Low Tier Prizes
        'funkopop_moaningmertle',
        'funkopop_draco',
        'funkopop_voldemort',
        'funkopop_snape'
    },
    Mid = { -- Mid Tier Prizes
        'funkopop_dumbledore',
        'funkopop_hedwig',
        'funkopop_hagrid',
    },
    High = { -- High Tier Prizes
        'funkopop_harrypotter',
        'funkopop_hermione',
        'funkopop_ron',
    }
}