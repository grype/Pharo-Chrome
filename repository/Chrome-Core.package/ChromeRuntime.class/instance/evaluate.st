api
evaluate
	| response result |
	response := self page
		sendMessage:
			(self
				messageForMethod: #evaluate
				paramsFrom:
					#(#expression #objectGroup #includeCommandLineAPI #silent #contextId #returnByValue #generatePreview #userGesture #awaitPromise))
		resultDescription: self remoteObjectDescription , self exceptionDetailsDescription.

	result := response result.
	result at: #exceptionDetails ifPresent: [ :exception | ChromeScriptError new details: exception; signal: exception exception description ].
	^ result at: #result