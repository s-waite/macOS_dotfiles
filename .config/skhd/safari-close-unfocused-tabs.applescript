tell application "Safari"
	set closeTab to (name of current tab of window 1)
	close (every tab of window 1 whose name is not equal to closeTab)
end tell
