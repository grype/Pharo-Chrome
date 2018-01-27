callbacks
processEventListenerWithId: anId data: data error: anError
	(eventListenerRegistry blockWithIdentifier: anId) ifNotNil: [ :block | block cull: data cull: anError ]