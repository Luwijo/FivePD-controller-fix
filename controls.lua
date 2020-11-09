-- Version 1.7
-- Controller disabler for FivePD menu's
-- FiveM Control Documentation: https://docs.fivem.net/docs/game-references/controls/
-- Created by Franky#0544 (Discord user)

local cDisable = true

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if cDisable and not GetLastInputMethod(1) then
		
			-- Prevents controller from opening menu's when driving
			DisableControlAction(0, 10, true)	-- 
			DisableControlAction(0, 20, true)	-- DPad down / callout menu = Z
			DisableControlAction(0, 29, true)	-- Right Stick / MDT = B
			DisableControlAction(0, 47, true)	-- DPad left / dispatch menu = G
			DisableControlAction(0, 56, true)	-- Y button / ALPR = F9
			DisableControlAction(0, 57, true)	-- B button / scene management = F10
			DisableControlAction(0, 58, true)	-- DPad left / dispatch menu = G
			DisableControlAction(0, 303, true)	-- DPad up / dispatch menu = U
			DisableControlAction(0, 344, true)	-- DPad right / duty menu = F11
			
			-- Prevents controller from opening menu's when attempting to sprint
			DisableControlAction(0, 38, true)	-- Left bumper / ped vehicle menu = E
			DisableControlAction(0, 73, true)	-- A button / ped menu = X
		end
	end
end)