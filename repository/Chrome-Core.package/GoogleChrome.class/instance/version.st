accessing
version
	"Return a dictionary with version information"
	
	^STON fromURL: ('http://localhost:{1}/json/version' format: {debugPort greaseString})