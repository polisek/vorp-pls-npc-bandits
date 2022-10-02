/**/
local VORPcore = {}

TriggerEvent("getCore", function(core)
    VORPcore = core
end)

RegisterServerEvent('pls_bandits:server:robbed')
AddEventHandler('pls_bandits:server:robbed', function(amount,data)
	local Character = VORPcore.getUser(source).getUsedCharacter
	local money = Character.money
	Character.removeCurrency(0, money)
end)