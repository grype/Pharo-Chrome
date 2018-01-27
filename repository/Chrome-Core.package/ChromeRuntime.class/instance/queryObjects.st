api
queryObjects
	^ self page
		sendMessage: (self messageForMethod: #queryObjects paramsFrom: #(#prototypeObjectId))