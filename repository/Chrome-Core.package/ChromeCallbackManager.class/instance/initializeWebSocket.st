initialization
initializeWebSocket
	| port |
	self class portRegistry isEmpty
		ifTrue: [ Error
				signal: 'No available ports left for handling callbacks. Reclaim some first.' ].
	port := self class portRegistry next.
	webSocket := ZnWebSocket
		startServerOn: port
		do: [ :socket | 
			[ socket runWith: [ :message | self processCallbackMessage: message ] ]
				on: ConnectionClosed
				do: [ 
					self class portRegistry reclaim: port.
					self crLog: 'ChromeCallbackManager closed connection' ] ]