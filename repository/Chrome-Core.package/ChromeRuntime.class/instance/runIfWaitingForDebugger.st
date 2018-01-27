api
runIfWaitingForDebugger
	^ self page
		sendMessage: (self messageForMethod: #runIfWaitingForDebugger)