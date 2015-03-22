sW, sH = guiGetScreenSize()
x = 1360
y = 768

local sm = {}
sm.moov = 0
sm.object1, sm.object2 = nil, nil
 
 
local function camRender ()
	local x1, y1, z1 = getElementPosition ( sm.object1 )
	local x2, y2, z2 = getElementPosition ( sm.object2 )
	setCameraMatrix ( x1, y1, z1, x2, y2, z2 )
end
 
local function removeCamHandler ()
	if(sm.moov == 1) then
		sm.moov = 0
		removeEventHandler ( "onClientPreRender", getRootElement(), camRender )
	end
end

function smoothMoveCameraa ( x1, y1, z1, x1t, y1t, z1t, x2, y2, z2, x2t, y2t, z2t, time )
	if(sm.moov == 1) then return false end
	sm.object1 = createObject ( 1337, x1, y1, z1 )
	sm.object2 = createObject ( 1337, x1t, y1t, z1t )
	setElementAlpha ( sm.object1, 0 )
	setElementAlpha ( sm.object2, 0 )
	setObjectScale(sm.object1, 0.01)
	setObjectScale(sm.object2, 0.01)
	moveObject ( sm.object1, time, x2, y2, z2, 0, 0, 0, "InOutQuad" )
	moveObject ( sm.object2, time, x2t, y2t, z2t, 0, 0, 0, "InOutQuad" )
 
	addEventHandler ( "onClientPreRender", getRootElement(), camRender )
	sm.moov = 1
	setTimer ( removeCamHandler, time, 1 )
	setTimer ( destroyElement, time, 1, sm.object1 )
	setTimer ( destroyElement, time, 1, sm.object2 )
	return true
end


sW, sH = guiGetScreenSize()
x = 1360
y = 768

--  /x) * sW, /y) * sH


logowanie = guiCreateLabel(0.77, 0.41, 0.18, 0.05, "", true)
rejka = guiCreateLabel(0.77, 0.49, 0.18, 0.05, "", true)
login = guiCreateEdit(0.38, 0.42, 0.16, 0.04, "", true)
haslo = guiCreateEdit(0.38, 0.50, 0.16, 0.04, "", true)   
Logowanie_button_Gora = guiCreateLabel(0.37, 0.29, 0.13, 0.05, "", true)
Changelog_Button_Gora = guiCreateLabel(0.52, 0.29, 0.13, 0.05, "", true) 
guiEditSetMasked ( haslo, true ) 
guiSetVisible (logowanie, false)
guiSetVisible (rejka, false)
guiSetVisible (login, false)
guiSetVisible (haslo, false)
guiSetVisible (Logowanie_button_Gora, false)
guiSetVisible (Changelog_Button_Gora, false)

blad = guiCreateLabel(0.00, 0.57, 1.00, 0.05, "", true)
guiSetAlpha(blad, 0.54)
guiLabelSetColor(blad, 255, 0, 0)
guiLabelSetHorizontalAlign(blad, "center", false)
guiLabelSetVerticalAlign(blad, "center")  
guiSetVisible (blad, false)


function gui1()
		local screenW, screenH = guiGetScreenSize()
        dxDrawRectangle(screenW * 0.000, screenH * 0.345, screenW * 1.000, screenH * 0.281, tocolor(0, 0, 0, 200), false)
        dxDrawRectangle(screenW * 0.3661, screenH * 0.294, screenW * 0.128, screenH * 0.051, tocolor(139, 139, 139, 200), true)
        dxDrawRectangle(screenW * 0.522, screenH * 0.294, screenW * 0.128, screenH * 0.051, tocolor(139, 139, 139, 200), true)
        dxDrawLine(screenW * 0.000, screenH * 0.626, screenW * 0.999, screenH * 0.626, tocolor(255, 255, 255, 255), 3, false)
        dxDrawText("Logowanie", screenW * 0.367, screenH * 0.294, screenW * 0.495, screenH * 0.342, tocolor(0, 0, 0, 222), 1.00, "default-bold", "center", "center", false, false, true, false, false)
        dxDrawText("Changelog", screenW * 0.522, screenH * 0.294, screenW * 0.650, screenH * 0.342, tocolor(0, 0, 0, 222), 1.00, "default-bold", "center", "center", false, false, true, false, false)
        dxDrawRectangle(screenW * 0.366, screenH * 0.294, screenW * 0.284, screenH * 0.051, tocolor(0, 0, 0, 200), false)
        dxDrawText("Login Gracza:", screenW * 0.215, screenH * 0.418, screenW * 0.366, screenH * 0.456, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Hasło Gracza:", screenW * 0.215, screenH * 0.499, screenW * 0.366, screenH * 0.536, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawLine(screenW * 0.215, screenH * 0.536, screenW * 0.366, screenH * 0.536, tocolor(255, 255, 255, 255), 2, false)
        dxDrawLine(screenW * 0.215, screenH * 0.456, screenW * 0.366, screenH * 0.456, tocolor(255, 255, 255, 255), 2, false)
        dxDrawRectangle(screenW * 0.771, screenH * 0.409, screenW * 0.177, screenH * 0.053, tocolor(109, 109, 109, 200), false)
        dxDrawRectangle(screenW * 0.771, screenH * 0.492, screenW * 0.177, screenH * 0.053, tocolor(109, 109, 109, 200), false)
        dxDrawText("Zaloguj", screenW * 0.770, screenH * 0.408, screenW * 0.948, screenH * 0.462, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawText("Zarejestruj", screenW * 0.770, screenH * 0.491, screenW * 0.948, screenH * 0.546, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
end

function gui2()
		local screenW, screenH = guiGetScreenSize()
        dxDrawRectangle(screenW * 0.000, screenH * 0.345, screenW * 1.000, screenH * 0.281, tocolor(0, 0, 0, 200), false)
        dxDrawRectangle(screenW * 0.3661, screenH * 0.294, screenW * 0.128, screenH * 0.051, tocolor(139, 139, 139, 200), true)
        dxDrawRectangle(screenW * 0.522, screenH * 0.294, screenW * 0.128, screenH * 0.051, tocolor(139, 139, 139, 200), true)
        dxDrawLine(screenW * 0.000, screenH * 0.626, screenW * 0.999, screenH * 0.626, tocolor(255, 255, 255, 255), 3, false)
        dxDrawText("Logowanie", screenW * 0.367, screenH * 0.294, screenW * 0.495, screenH * 0.342, tocolor(0, 0, 0, 222), 1.00, "default-bold", "center", "center", false, false, true, false, false)
        dxDrawText("Changelog", screenW * 0.522, screenH * 0.294, screenW * 0.650, screenH * 0.342, tocolor(0, 0, 0, 222), 1.00, "default-bold", "center", "center", false, false, true, false, false)
        dxDrawRectangle(screenW * 0.366, screenH * 0.294, screenW * 0.284, screenH * 0.051, tocolor(0, 0, 0, 200), false)
        dxDrawText("* Tu wprowadź Tekst\n* Tu wprowadź Tekst\n* Tu wprowadź Tekst\n* Tu wprowadź Tekst\n* Tu wprowadź Tekst\n* Tu wprowadź Tekst\n* Tu wprowadź Tekst\n* Tu wprowadź Tekst\n* Tu wprowadź Tekst\n* Tu wprowadź Tekst\n* Tu wprowadź Tekst\n* Tu wprowadź Tekst\n* Tu wprowadź Tekst\n* Tu wprowadź Tekst", 497, 267, 884, 471, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "top", false, false, true, false, false)
        --dxDrawText("Login Gracza:", screenW * 0.215, screenH * 0.418, screenW * 0.366, screenH * 0.456, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        --dxDrawText("Hasło Gracza:", screenW * 0.215, screenH * 0.499, screenW * 0.366, screenH * 0.536, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        --dxDrawLine(screenW * 0.215, screenH * 0.536, screenW * 0.366, screenH * 0.536, tocolor(255, 255, 255, 255), 2, false)
        --dxDrawLine(screenW * 0.215, screenH * 0.456, screenW * 0.366, screenH * 0.456, tocolor(255, 255, 255, 255), 2, false)
        --dxDrawRectangle(screenW * 0.771, screenH * 0.409, screenW * 0.177, screenH * 0.053, tocolor(109, 109, 109, 200), false)
        --dxDrawRectangle(screenW * 0.771, screenH * 0.492, screenW * 0.177, screenH * 0.053, tocolor(109, 109, 109, 200), false)
        --dxDrawText("Zaloguj", screenW * 0.770, screenH * 0.408, screenW * 0.948, screenH * 0.462, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        --dxDrawText("Zarejestruj", screenW * 0.770, screenH * 0.491, screenW * 0.948, screenH * 0.546, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
end




addEventHandler("onClientResourceStart",getResourceRootElement(getThisResource()), 
function ()
smoothMoveCameraa (-2007.1522216797, 34.679080963135, 52.299648284912, -2006.8447265625, 103.50186920166, 27.026756286621,-2006.1824951172, 262.62771606445, 45.796443939209,-1985.236328125, 286.99975585938, 40.668460845947, 12000 )
showChat (false)
showPlayerHudComponent("all",false)
guiSetVisible (logowanie, true)
guiSetVisible (rejka, true)
guiSetVisible (login, true)
guiSetVisible (haslo, true)
guiSetVisible (blad, true)
guiSetVisible (Logowanie_button_Gora, true)
guiSetVisible (Changelog_Button_Gora, true)
showCursor (true)
addEventHandler ("onClientRender", root, gui1)
fadeCamera (true)
end)	

function onClickBtnLogin(button,state)
	if(button == "left" and state == "up") then
			username = guiGetText(login)
			password = guiGetText(haslo)
					checksave = true
			triggerServerEvent("onRequestLogin",getLocalPlayer(),username,password,passwordConfirm,checksave)
		end
	end
addEventHandler ("onClientGUIClick", logowanie, onClickBtnLogin)

function onClickBtnRegister(button,state)
	if(button == "left" and state == "up") then
			username = guiGetText(login)
			password = guiGetText(haslo)
			triggerServerEvent("onRequestRegister",getLocalPlayer(),username,password,password)
		end
	end
addEventHandler ("onClientGUIClick", rejka, onClickBtnRegister)

addEventHandler ("onClientGUIClick", Logowanie_button_Gora,
function ()
removeEventHandler ("onClientRender", root, gui2)
removeEventHandler ("onClientRender", root, gui1)
addEventHandler ("onClientRender", root, gui1)
guiSetVisible (logowanie, true)
guiSetVisible (rejka, true)
guiSetVisible (login, true)
guiSetVisible (blad, true)
guiSetVisible (haslo, true)
end,
false)

addEventHandler ("onClientGUIClick", Changelog_Button_Gora,
function ()
removeEventHandler ("onClientRender", root, gui2)
removeEventHandler ("onClientRender", root, gui1)
addEventHandler ("onClientRender", root, gui2)
guiSetVisible (logowanie, false)
guiSetVisible (rejka, false)
guiSetVisible (login, false)
guiSetVisible (blad, false)
guiSetVisible (haslo, false)
end, false
)


addEvent ("statygracza", true)
addEventHandler ("statygracza", root,
function ()
player = getLocalPlayer()
setCameraTarget (player)
showPlayerHudComponent("all", true)
guiSetVisible (logowanie, false)
guiSetVisible (rejka, false)
guiSetVisible (login, false)
guiSetVisible (blad, false)
guiSetVisible (haslo, false)
guiSetVisible (Logowanie_button_Gora, false)
guiSetVisible (Changelog_Button_Gora, false)
showCursor (false)
showChat (true)
removeEventHandler ( "onClientPreRender", getRootElement(), camRender )
removeEventHandler ("onClientRender", root, gui1)
removeEventHandler ("onClientRender", root, gui2)
end
)

addEvent ("Zaloguj_N", true)
addEventHandler ("Zaloguj_N", root,
function ()
blad0 = guiSetText (blad, "Teraz prosze sie zalogowac !!")
end)

addEvent ("Konto_Jest", true)
addEventHandler ("Konto_Jest", root,
function ()
blad1 = guiSetText (blad, "Takie konto już istnieje !! Prosze wprowadzić inny login !")
end)

addEvent ("Konto_Jest1", true)
addEventHandler ("Konto_Jest1", root,
function ()
blad2 = guiSetText (blad, "Takie konto już istnieje !! Prosze wprowadzić inny login !")
end)

addEvent ("Haslo", true)
addEventHandler ("Haslo", root,
function ()
blad3 = guiSetText (blad, "Uzupełnij pole: Hasło Gracza !!")
end)

addEvent ("login", true)
addEventHandler ("login", root,
function ()
blad4 = guiSetText (blad, "Uzupełnij pole: Login Gracza !!")
end)
