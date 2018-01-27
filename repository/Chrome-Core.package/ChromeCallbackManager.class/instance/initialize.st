initialization
initialize
	super initialize.
	eventListenerRegistry := ChromeCallbackRegistry new.
	callbackRegistry := ChromeCallbackRegistry new.
	self initializeWebSocket