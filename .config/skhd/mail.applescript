tell application "System Events"
	tell application "Mail" to activate
	tell application process "Mail"
		if (count of windows) is equal to 0 then
			click menu item "New Viewer Window" of menu "File" of menu bar 1
		end if
		set frontmost to true
	end tell
end tell