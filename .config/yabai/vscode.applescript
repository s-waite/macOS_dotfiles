use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions


tell application "System Events"
	if (bundle identifier of every application process whose background only is equal to false) contains "com.microsoft.VSCode" then
		tell (every application process whose bundle identifier is equal to "com.microsoft.VSCode")
			set num_windows to count of every window
		end tell
		if num_windows is equal to 0 then
			tell process "Electron"
				click menu item "New Window" of menu "File" of menu bar 1
			end tell
		end if
	else
		activate application "Visual Studio Code"
	end if
	tell (every application process whose bundle identifier is equal to "com.microsoft.VSCode")
		set frontmost to true
	end tell
end tell