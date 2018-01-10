operating
evaluate: aString returnByValue: returnByValue generatePreview: generatePreview
	^ self
		sendMessage:
			(ChromeMessage new
				method: 'Runtime.evaluate';
				params:
					(Dictionary new
						at: 'expression' put: aString;
						at: 'returnByValue' put: returnByValue ;
						at: 'generatePreview' put: generatePreview ;
						yourself))