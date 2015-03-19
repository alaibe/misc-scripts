on processMessage(theMessage)
	tell application "Airmail 2"
		activate
		set forwardMessage to make new outgoing message
		tell forwardMessage
			set subject to subject of theMessage
			set content to content of theMessage
			set sender to "anthony@laibe.cc"
			set signature to "Anthony Laibe"
			make new to recipient at end of to recipients with properties {name:"Wunderlist", address:"me@wunderlist.com"}
			sendmessage
		end tell
	end tell
end processMessage
