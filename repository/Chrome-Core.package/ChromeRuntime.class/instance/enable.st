api
enable
	^ self page
		sendMessage: (self messageForMethod: #enable)