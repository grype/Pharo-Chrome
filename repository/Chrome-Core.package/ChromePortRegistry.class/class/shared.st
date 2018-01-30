accessing
shared
	^ SharedInstance ifNil: [ SharedInstance := self with: (8100 to: 8999) ] 