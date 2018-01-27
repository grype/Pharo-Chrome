describing
argumentValueDescriptionClass
	argumentValue isString
		ifTrue: [ ^ MAStringDescription ].
	argumentValue isNumber
		ifTrue: [ ^ MANumberDescription ].
	(argumentValue isKindOf: Boolean)
		ifTrue: [ ^ MABooleanDescription ].
	(argumentValue isDictionary not and: [ argumentValue isCollection ])
		ifTrue: [ ^ MAToManyRelationDescription ].
	^ MAToOneRelationDescription