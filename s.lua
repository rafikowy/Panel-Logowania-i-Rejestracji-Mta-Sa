function PlayerLogin(username,password,checksave)
if not (username == "") then
if not (password == "") then
local account = getAccount ( username,password )
if ( account ~= false ) then
logIn(source, account, password)
setPlayerName(source,username)
setCameraTarget(source, source)
triggerClientEvent (source,"statygracza",getRootElement())
end
end
end
end						
addEvent("onRequestLogin",true)
addEventHandler("onRequestLogin",getRootElement(),PlayerLogin)

function registerPlayer(username,password,passwordConfirm)
	if not (username == "") then
		if not (password == "") then
					local account = getAccount (username,password)
					if (account == false) then
						local accountAdded = addAccount(tostring(username),tostring(password))
						if (accountAdded) then
							triggerClientEvent (source, "Zaloguj_N", root, source)
						else
							triggerClientEvent (source, "Konto_Jest", root, source)
						end
					else
						triggerClientEvent (source, "Konto_Jest1", root, source)
					end
		else
			triggerClientEvent (source, "Haslo", root, source)
		end
	else
		triggerClientEvent (source, "login", root, source)
		end
		end
                                               
		
addEvent("onRequestRegister",true)
addEventHandler("onRequestRegister",getRootElement(),registerPlayer)


function playerLogin( thePlayer )
end
addEventHandler("onPlayerLogin", getRootElement(), playerLogin)

function playerJoin( thePlayer )
spawnPlayer(thePlayer,0,0,0,0)
end
addEventHandler("onPlayerJoin", getRootElement(), playerLogin)