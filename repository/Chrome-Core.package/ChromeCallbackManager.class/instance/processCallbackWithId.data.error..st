callbacks
processCallbackWithId: anId data: data error: anError
	(callbackRegistry blockWithIdentifier: anId)
		ifNotNil: [ :block | 
			block cull: data cull: anError.
			callbackRegistry unregisterIdentifier: anId ]