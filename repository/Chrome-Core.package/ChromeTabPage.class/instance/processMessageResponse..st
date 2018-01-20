utilities
processMessageResponse: response
	| json result error |
	json := NeoJSONReader fromString: response.
	result := json at: 'result' ifAbsent: [ nil ].
	error := json
		at: 'error'
		ifPresent: [ :err | 
			ChromeError
				newWithCode: (err at: 'code' ifAbsent: [ nil ])
				message: (err at: 'message' ifAbsent: [ nil ]) ]
		ifAbsent: [ nil ].
	error ifNotNil: [ :err | err signal ].
	^ result