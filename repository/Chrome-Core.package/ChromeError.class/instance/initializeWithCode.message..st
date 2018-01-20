initialization
initializeWithCode: aCode message: aMessage
	self initialize.
	code := aCode asInteger.
	messageText := aMessage asString