api
globalLexicalScopeNames
	^ self page
		sendMessage: (self messageForMethod: #globalLexicalScopeNames paramsFrom: #(#executionContextId))