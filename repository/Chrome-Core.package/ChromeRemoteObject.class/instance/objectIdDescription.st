describing
objectIdDescription
	<magritteDescription>
	^ MAStringDescription new
		label: 'Object ID';
		accessor: #objectId;
		jsonName: #objectId;
		beOptional;
		yourself