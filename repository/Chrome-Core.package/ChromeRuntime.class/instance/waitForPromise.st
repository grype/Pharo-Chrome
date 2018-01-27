api
waitForPromise
	^ self page sendMessage: (self messageForMethod: #awaitPromise paramsFrom: #(#promiseObjectId #returnByValue #generatePreview))