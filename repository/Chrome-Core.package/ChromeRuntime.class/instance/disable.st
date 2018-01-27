api
disable
	^ self page
		sendMessage: (self messageForMethod: #disable)