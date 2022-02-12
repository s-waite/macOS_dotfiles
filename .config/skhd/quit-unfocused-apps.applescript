use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions
set appsToClose to {}

tell application "System Events"
	-- setting the apps to exclude
	set appsToExclude to {"Finder", "Spotify"}
	copy (get name of first application process where frontmost is equal to true) to the end of appsToExclude
	
	-- getting all open apps
	set allApps to (get name of every application process where background only is equal to false)
	
	-- creating list of apps to close
	repeat with i from 1 to count allApps
		set theApp to item i of allApps
		if theApp is not in appsToExclude then
			copy item i of allApps to the end of appsToClose
		end if
	end repeat
	
	
end tell

-- closing apps
repeat with theApp in appsToClose
	log theApp
	try
		tell application theApp to quit
	end try
end repeat

tell application "Finder" to close every window
