initialization
initialize
	super initialize.
	id := self class nextMessageId.
	params := Dictionary new