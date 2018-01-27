api
compileScript: aScriptString sourceURL: aSourceUrlString
	^ self
		expression: aScriptString;
		sourceURL: aSourceUrlString;
		compileScript