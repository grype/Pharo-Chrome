api
callFunction
	^ self page
		sendMessage:
			(self
				messageForMethod: #callFunctionOn
				paramsFrom:
					#(#functionDeclaration #objectId #arguments #silent #returnByValue #generatePreview #userGesture #awaitPromise #executionContextId #objectGroup))