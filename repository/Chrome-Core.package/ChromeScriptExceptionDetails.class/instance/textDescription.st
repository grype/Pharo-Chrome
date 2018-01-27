describing
textDescription
	<magritteDescription>
	^ MAStringDescription new
		label: 'Text';
		accessor: #text;
		jsonName: #text;
		beOptional;
		yourself