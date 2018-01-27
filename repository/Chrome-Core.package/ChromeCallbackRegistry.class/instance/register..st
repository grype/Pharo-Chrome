registration
register: aBlock
	| id |
	id := self nextCallbackIdentifier.
	^ registry
		at: id
		ifPresent: [ self register: aBlock ]
		ifAbsent: [ registry at: id put: aBlock.
			id ]