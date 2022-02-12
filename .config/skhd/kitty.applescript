tell application "System Events"
	
	if (get name of every application process whose background only is false) contains "Kitty" then
		if (count of every window of application process "kitty") is equal to 0 then
			tell application process "kitty" to click menu item "New OS Window" of menu "Shell" of menu bar 1
		end if
	end if
	tell application "kitty" to activate
end tell

