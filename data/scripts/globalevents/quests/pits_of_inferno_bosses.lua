local spawns = {
	[1] = {position = Position(32876,32270,15), monster = 'Massacre'},
	[2] = {position = Position(32837,32309,15), monster = 'Dracola'},
	[3] = {position = Position(32907,32215,15), monster = 'The Imperor'},
	[4] = {position = Position(32763,32243,15), monster = 'Mr. Punish'},
	[5] = {position = Position(32802,32333,15), monster = 'Countess Sorrow'},
	[6] = {position = Position(32845,32332,15), monster = 'The Plasmother'},
	[7] = {position = Position(32785,32290,15), monster = 'The Handmaiden'}
}

local bossesPoi = GlobalEvent("bosses poi")
function bossesPoi.onThink(interval, lastExecution)
	local spawn = spawns[math.random(#spawns)]
	local monster = Game.createMonster(spawn.monster, spawn.position, true, true)

	if not monster then
		print('>> Failed to spawn '..rand.bossName..'.')
		return true
	end
	return true
end

bossesPoi:interval(46800000)
bossesPoi:register()