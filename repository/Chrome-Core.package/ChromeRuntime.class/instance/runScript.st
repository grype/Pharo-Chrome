api
runScript
	^ self page
		sendMessage:
			(self
				messageForMethod: #runScript
				paramsFrom: #(#scriptId #executionContextId #objectGroup #silent #includeCommandLineAPI #returnByValue #generatePreview #awaitPromise))