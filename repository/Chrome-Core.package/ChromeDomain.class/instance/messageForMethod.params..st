creating messages
messageForMethod: aMethodName params: aParamDict
	^ ChromeMessage new
		method: self domainName , '.' , aMethodName greaseString;
		params: aParamDict;
		yourself