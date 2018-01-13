instance creation
newWithMethod: aMethodString params: aParamDict
	^ self new
		method: aMethodString;
		params: aParamDict;
		yourself