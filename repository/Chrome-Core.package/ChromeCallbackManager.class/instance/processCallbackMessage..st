callbacks
processCallbackMessage: aMessage
	| message |
	message := ChromeCallbackResponse fromJson: aMessage.
	message isCallbackResponse
		ifTrue: [ self
				processCallbackWithId: message callbackId
				data: message responseData
				error: message responseError ].
	message isEventListenerResponse
		ifTrue: [ self
				processEventListenerWithId: message eventListenerId
				data: message responseData
				error: message responseError ]