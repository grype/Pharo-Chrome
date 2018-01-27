accessing
blockWithIdentifier: id
	^ registry at: id ifAbsent: [ nil ]