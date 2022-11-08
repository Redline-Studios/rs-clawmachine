![Redline Studios Banner](https://i.imgur.com/VFEXnGd.png)
# Redline Studios Discord:
https://discord.gg/RCU9XEvnsE

# rs-clawmachine
- Fun claw machine resource for QB-Core
- Random tier winnings (Set in Config)
	- Low
	- Mid
	- High
- Set payment type
- Chance that the machine takes your money
- Uses qb-lock or ps-ui circle minigame
- Use qb-target or drawtext
- Ability to add funds to a business when players use the claw machines

# Preview
https://streamable.com/ekfqjn

# Installation
- Add items to `qb-core > shared > items.lua`
- Add images to `yourInventory > html > images`
- Choose which minigame to use in the config. `Config.Minigame`
	- PS-UI: https://github.com/Project-Sloth/ps-ui
	- QB-Lock: https://github.com/Nathan-FiveM/qb-lock
```
	-- Funkopop Toys
	['funkopop_harrypotter']		= {['name'] = 'funkopop_harrypotter',	['label'] = 'Harry Potter Funkopop',		['weight'] = 0,		['type'] = 'item',		['image'] = 'funkopop_harrypotter.png',		['unique'] = false,		['useable'] = false,		['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Harry Potter Funkopop Toy'},
	['funkopop_draco']				= {['name'] = 'funkopop_draco',			['label'] = 'Draco Malfoy Funkopop',		['weight'] = 0,		['type'] = 'item',		['image'] = 'funkopop_draco.png',			['unique'] = false,		['useable'] = false,		['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Draco Malfoy Funkopop Toy'},
	['funkopop_hermione']			= {['name'] = 'funkopop_hermione',		['label'] = 'Hermione Funkopop',			['weight'] = 0,		['type'] = 'item',		['image'] = 'funkopop_hermione.png',		['unique'] = false,		['useable'] = false,		['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Hermione Funkopop Toy'},
	['funkopop_ron']				= {['name'] = 'funkopop_ron',			['label'] = 'Ron Funkopop',					['weight'] = 0,		['type'] = 'item',		['image'] = 'funkopop_ron.png',				['unique'] = false,		['useable'] = false,		['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Ron Funkopop Toy'},
	['funkopop_dumbledore']			= {['name'] = 'funkopop_dumbledore',	['label'] = 'Dumbledore Funkopop',			['weight'] = 0,		['type'] = 'item',		['image'] = 'funkopop_dumbledore.png',		['unique'] = false,		['useable'] = false,		['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Dumbledore Funkopop Toy'},
	['funkopop_hedwig']				= {['name'] = 'funkopop_hedwig',		['label'] = 'Hedwig Funkopop',				['weight'] = 0,		['type'] = 'item',		['image'] = 'funkopop_hedwig.png',			['unique'] = false,		['useable'] = false,		['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Hedwig Funkopop Toy'},
	['funkopop_hagrid']				= {['name'] = 'funkopop_hagrid',		['label'] = 'Hagrid Funkopop',				['weight'] = 0,		['type'] = 'item',		['image'] = 'funkopop_hagrid.png',			['unique'] = false,		['useable'] = false,		['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Hagrid Funkopop Toy'},
	['funkopop_moaningmertle']		= {['name'] = 'funkopop_moaningmertle',	['label'] = 'Moaning Mertle Funkopop',		['weight'] = 0,		['type'] = 'item',		['image'] = 'funkopop_moaningmertle.png',	['unique'] = false,		['useable'] = false,		['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Moaning Mertle Funkopop Toy'},
	['funkopop_voldemort']			= {['name'] = 'funkopop_voldemort',		['label'] = 'Voldemort Funkopop',			['weight'] = 0,		['type'] = 'item',		['image'] = 'funkopop_voldemort.png',		['unique'] = false,		['useable'] = false,		['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Voldemort Funkopop Toy'},
	['funkopop_snape']				= {['name'] = 'funkopop_snape',			['label'] = 'Severus Snape Funkopop',		['weight'] = 0,		['type'] = 'item',		['image'] = 'funkopop_snape.png',			['unique'] = false,		['useable'] = false,		['shouldClose'] = false,	['combinable'] = nil,	['description'] = 'Severus Snape Funkopop Toy'},
```

# Credits
- Original Script: https://github.com/Demo4889/qb-clawmachine
