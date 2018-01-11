operating
captureScreenshot

	| base64 result |
	result := self sendMessage: (ChromeMessage new method: 'Page.captureScreenshot'; yourself ).
	base64 := result at: 'data' ifAbsent: [ ^ nil].
	
	^Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: base64 readStream) 