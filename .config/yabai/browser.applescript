set defaultBrowser to do shell script "defaults read \\
    ~/Library/Preferences/com.apple.LaunchServices/com.apple.launchservices.secure \\
    | awk -F'\"' '/http;/{print window[(NR)-1]}{window[NR]=$2}'"

if defaultBrowser is "" or defaultBrowser contains "safari" then
	--  # The default Browser is Safari.
	set defaultBrowser to "Safari"
	--  # Your code goes here.
else if defaultBrowser contains "chrome" then
	--  # The default Browser is Google Chrome.
	set defaultBrowser to "Google Chrome"
	--  # Your code goes here.
else if defaultBrowser contains "firefox" then
	--  # The default Browser is Firefox.
	set defaultBrowser to "Firefox"
	--  # Your code goes here.
else
	set defaultBrowser to "Other"
	--  # Your code goes here.
end if

tell application defaultBrowser
	activate
	if (count of (every window)) is equal to 0 then
		if defaultBrowser is equal to "Google Chrome" then
			make new window
		else if defaultBrowser is equal to "Safari" then
			make new document
		end if
	end if
end tell
