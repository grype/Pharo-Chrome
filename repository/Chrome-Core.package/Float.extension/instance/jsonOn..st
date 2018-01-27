*Chrome-Core
jsonOn: aRenderer
	(self isInfinite or: [self isNaN]) ifTrue: [  
		^ aRenderer number: self.
		].
	(self - self) = 0.0
		ifTrue: [ aRenderer number: self ]
		ifFalse: [ aRenderer null ]