creating messages
messageForMethod: aMethodName paramsFrom: arrayOfSelectors resultDescription: aResultDescription
	^ self
		messageForMethod: aMethodName
		params:
			(arrayOfSelectors
				collect: [ :selector | selector greaseString -> (self perform: selector asSymbol) ]
				thenSelect: [ :each | each value isNotNil ]) asDictionary
		resultDescription: aResultDescription