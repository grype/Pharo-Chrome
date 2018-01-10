operating
navigateTo: anURL
	^ self
		sendMessage:
			(ChromeMessage new
				method: 'Page.navigate';
				params:
					(Dictionary new
						at: url put: anURL;
						yourself);
				yourself)