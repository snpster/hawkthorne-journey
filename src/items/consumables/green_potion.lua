-- made by Nicko21
local Timer = require 'vendor/timer'
return{
    name = "Invulnerability Potion",
    image = "green_potion",
    type = "consumable",
    MAX_ITEMS = 2,
	duration = 3,
    use = function( consumable, player )
		player:beginFlash(consumable.props.duration, {0,255,0,255})
        local orig = player.invulnerable
        player.invulnerable = true
        Timer.add(consumable.props.duration, function() 
            player.invulnerable = orig
        end)
	end
}
