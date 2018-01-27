api
discardConsoleEntries
	^ self page
		sendMessage: (self messageForMethod: #discardConsoleEntries)