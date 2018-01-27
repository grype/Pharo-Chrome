describing
objectIdDescription
	<magritteDescription>
	^ MANumberDescription new
		label: 'Object ID';
		accessor: #objectId;
		jsonName: 'objectId';
		beOptional;
		yourself