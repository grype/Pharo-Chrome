operating
captureScreenshot

	| base64 json |
	json := self sendMessage: (ChromeMessage new method: 'Page.captureScreenshot'; yourself ).
	base64 := ((STON fromString: json) at: 'result') at: 'data'.
	
	^Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: base64 readStream) 