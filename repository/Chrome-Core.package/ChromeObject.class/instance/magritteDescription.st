describing
magritteDescription
	^ super magritteDescription
		jsonWriter: ChromeJsonWriter;
		jsonReader: ChromeJsonReader new;
		yourself