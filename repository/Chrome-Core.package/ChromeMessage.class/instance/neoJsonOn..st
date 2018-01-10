serializing
neoJsonOn: neoJSONWriter
	neoJSONWriter
		writeMap:
			(Dictionary new
				at: 'id' put: id;
				at: 'method' put: method;
				at: 'params' put: (params ifNil: [ Dictionary new ]);
				yourself)