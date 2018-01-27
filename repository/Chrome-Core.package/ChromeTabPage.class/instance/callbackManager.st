accessing
callbackManager
	^ callbackManager ifNil: [ callbackManager := ChromeCallbackManager new ]