tell application "System Events"
	tell process "Google Chrome"
		set frontmost to true
		click menu item "Close Other Tabs" of menu "Tab" of menu bar 1
	end tell
end tell