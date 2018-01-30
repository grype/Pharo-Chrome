accessing
tabPages
	| remotes |
	remotes := STON
		fromString: (ZnEasy get: ('http://localhost:{1}/json' format: {debugPort greaseString})) contents.
	^ remotes collect: [ :each | ChromeTabPage fromDictionary: each ]