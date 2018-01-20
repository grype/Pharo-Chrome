utilities
sendMessage: aMessage
	| webSocket response |
	webSocket := ZnWebSocket to: self webSocketDebuggerUrl.
	response := [ webSocket
		sendMessage: (NeoJSONWriter toString: aMessage);
		readMessage ]
		ensure: [ webSocket close ].
	^ self processMessageResponse: response