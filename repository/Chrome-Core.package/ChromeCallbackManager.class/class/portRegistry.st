accessing
portRegistry
	PortRegistry ifNil: [ self initializePortRegistry ].
	^ PortRegistry 