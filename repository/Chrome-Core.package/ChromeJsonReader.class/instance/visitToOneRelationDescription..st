as yet unclassified
visitToOneRelationDescription: aDescription
	self object: (self createObjectFor: self data description: aDescription).
	self addPropertiesFrom: self data to: self result using: (aDescription reference ifNil: [self result magritteDescription])