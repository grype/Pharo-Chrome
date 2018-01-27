initialization
initializeWebSocket
	self class portRegistry isEmpty ifTrue: [ Error signal: 'No available ports left for handling callbacks. Reclaim some first.' ].
	webSocket := ZnWebSocket
		startServerOn: self class portRegistry next
		do: [ :socket | 
			[ socket runWith: [ :message | self processCallbackMessage: message ] ]
				on: ConnectionClosed
				do: [ self crLog: 'Ignoring connection close, done' ] ]