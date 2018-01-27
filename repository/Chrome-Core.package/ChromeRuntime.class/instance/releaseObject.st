api
releaseObject
	^ self page
		sendMessage: (self messageForMethod: #releaseObject paramsFrom: #(#objectId))