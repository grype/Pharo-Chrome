utilities
sendMessage: aMessage resultDescription: aResultDescription
	| webSocket response |

	webSocket := ZnWebSocket to: self webSocketDebuggerUrl.

	response := [ webSocket
		sendMessage: aMessage asJson;
		readMessage ]
		ensure: [ webSocket close ].

	^ ChromeResponse new
		pluggableResultDescription: aResultDescription;
		fromJson: response