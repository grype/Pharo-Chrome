api
compileScript
	^ self page
		sendMessage: (self messageForMethod: #compileScript paramsFrom: #(#expression #sourceURL #persistScript #executionContextId))