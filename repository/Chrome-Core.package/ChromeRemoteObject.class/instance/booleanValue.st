accessing values
booleanValue
	(type = 'boolean') ifTrue: [ ^ rawValue ].
	^ rawValue isNil 