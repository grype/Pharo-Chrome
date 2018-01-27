describing
rawValueDescription
	<magritteDescription>
	^ MAElementDescription new
		label: 'Value';
		accessor: #rawValue;
		jsonName: #value;
		beOptional;
		yourself