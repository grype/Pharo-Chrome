api
releaseObjectGroup
	^ self page
		sendMessage: (self messageForMethod: #releaseObjectGroup paramsFrom: #(#objectGroup))