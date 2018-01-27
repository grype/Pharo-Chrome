*Chrome-Core
primitiveNumber: aNumber
	aNumber = Float nan
		ifTrue: [ ^ self document stream nextPutAll: 'NaN' ].
	aNumber = Float infinity
		ifTrue: [ ^ self document stream nextPutAll: 'Infinity' ].
	aNumber = Float infinity negated
		ifTrue: [ ^ self document stream nextPutAll: '-Infinity' ].
	aNumber = Float zero negated
		ifTrue: [ ^ self document stream nextPutAll: '-0' ]