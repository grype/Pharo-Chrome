utilities
sendMessage: aMessage

	| webSocket |
	webSocket := ZnWebSocket to: self webSocketDebuggerUrl.
	^[ webSocket 
  	  sendMessage: (NeoJSONWriter toString: aMessage);
    	readMessage ] ensure: [ webSocket close ].