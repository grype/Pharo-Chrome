visiting-description
visitRelationDescription: aDescription
	aDescription useJsonKey
		ifFalse: [ ^super visitRelationDescription: aDescription ].
	self object isCollection
		ifTrue: [ (self object collect: [ :each | each jsonKey ]) jsonOn: stream ]
		ifFalse: [ self object jsonKey jsonOn: stream]