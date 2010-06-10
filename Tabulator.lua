local addon = CreateFrame('Frame')
addon:RegisterEvent('ZONE_CHANGED_NEW_AREA')
addon:SetScript('OnEvent', function()
	local _, instance = IsInInstance()
	if(instance == 'pvp' or instance == 'arena' or GetZonePVPInfo() == 'combat') then
		SetBinding('TAB', 'TARGETNEARESTENEMYPLAYER')
		SetBinding('SHIFT-TAB', 'TARGETPREVIOUSENEMYPLAYER')
	else
		SetBinding('TAB', 'TARGETNEARESTENEMY')
		SetBinding('SHIFT-TAB', 'TARGETPREVIOUSENEMY')
	end
end)
