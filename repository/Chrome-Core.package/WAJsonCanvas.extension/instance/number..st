*Chrome-Core
number: aNumber
	(aNumber isInfinite or: [ aNumber isNaN ])
		ifTrue: [ self primitiveNumber: aNumber ]
		ifFalse: [ aNumber printOn: self document stream ]