accessing
nextCallbackIdentifier
	^ (SharedRandom globalGenerator next * 10000 ) asInteger 